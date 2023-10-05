import 'dart:io';

import 'package:dio_http_cache/src/core/config.dart';
import 'package:dio_http_cache/src/core/obj.dart';
import 'package:dio_http_cache/src/store/disk_table.dart';
import 'package:dio_http_cache/src/store/store_impl.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class DiskCacheStore extends ICacheStore {
  final String? _databasePath;
  final String _databaseName;
  final Encrypt? _encrypt;
  final Decrypt? _decrypt;

  Isar? _db;

  Future<Isar?> get _database async {
    if (null == _db) {
      var path = _databasePath;
      if (null == path || path.length <= 0) {
        path = (await getApplicationDocumentsDirectory()) as String?;
      }
      await Directory(path!).create(recursive: true);
      _db = await Isar.open([DiskTableSchema],
          directory: path, name: _databaseName);
      await _clearExpired(_db);
    }
    return _db;
  }

  DiskCacheStore(
      this._databasePath, this._databaseName, this._encrypt, this._decrypt)
      : super();

  @override
  Future<CacheObj?> getCacheObj(String key, {String? subKey}) async {
    var db = await _database;
    if (null == db) return null;
    var resultList = await db.diskTables
        .where()
        .optional(null == subKey, (q) => q.keyEqualToAnySubKey(key))
        .filter()
        .optional(null != subKey, (q) => q.subKeyEqualTo(subKey))
        .findAll();
    if (resultList.isEmpty) return null;
    return await _decryptCacheObj(resultList.first);
  }

  @override
  Future<bool> setCacheObj(CacheObj obj) async {
    var db = await _database;
    if (null == db) return false;
    var content = await _encryptCacheStr(obj.content);
    var headers = await _encryptCacheStr(obj.headers);

    var cacheData = DiskTable()
      ..key = obj.key
      ..subKey = obj.subKey ?? ""
      ..maxAgeDate = obj.maxAgeDate ?? 0
      ..maxStaleDate = obj.maxStaleDate ?? 0
      ..content = content
      ..statusCode = obj.statusCode
      ..headers = headers;

    await db.txn(() async {
      await db.diskTables.put(cacheData);
    });
    return cacheData.id != null;
  }

  @override
  Future<bool> delete(String key, {String? subKey}) async {
    var db = await _database;
    if (null == db) return false;
    var res = await db.diskTables
        .where()
        .optional(subKey == null, (q) => q.keyEqualToAnySubKey(key))
        .filter()
        .optional(subKey != null, (q) => q.subKeyEqualTo(subKey))
        .deleteAll();
    return res > 0;
  }

  @override
  Future<bool> clearExpired() async {
    var db = await _database;
    return _clearExpired(db);
  }

  Future<bool> _clearExpired(Isar? db) async {
    if (null == db) return false;
    var now = DateTime.now().millisecondsSinceEpoch;
    //var where1 = "$_columnMaxStaleDate > 0 and $_columnMaxStaleDate < $now";
    //var where2 = "$_columnMaxStaleDate <= 0 and $_columnMaxAgeDate < $now";
    var res = 0;
    res += await db.diskTables.where().maxStaleDateBetween(0, now).deleteAll();
    res += await db.diskTables
        .where()
        .maxStaleDateLessThan(1)
        .filter()
        .maxAgeDateLessThan(now)
        .deleteAll();
    return res > 0;
  }

  @override
  Future<bool> clearAll() async {
    var db = await _database;
    if (null == db) return false;
    var bool = await db.close(deleteFromDisk: true);
    _db = null;
    return bool;
  }

  Future<CacheObj> _decryptCacheObj(DiskTable obj) async {
    obj.content = await _decryptCacheStr(obj.content);
    obj.headers = await _decryptCacheStr(obj.headers);
    return CacheObj(obj.key ?? "", obj.content!,
        subKey: obj.subKey,
        maxAge: Duration(milliseconds: obj.maxAgeDate!),
        maxStale: Duration(milliseconds: obj.maxStaleDate!),
        statusCode: obj.statusCode,
        headers: obj.headers);
  }

  Future<List<int>?> _decryptCacheStr(List<int>? bytes) async {
    if (null == bytes) return null;
    if (null != _decrypt) {
      bytes = await _decrypt!(bytes);
    }
    return bytes;
  }

  Future<List<int>?> _encryptCacheStr(List<int>? bytes) async {
    if (null == bytes) return null;
    if (null != _encrypt) {
      bytes = await _encrypt!(bytes);
    }
    return bytes;
  }
}
