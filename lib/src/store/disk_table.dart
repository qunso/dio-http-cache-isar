import 'package:isar/isar.dart';

part 'disk_table.g.dart';

@collection
class DiskTable {
  Id? id = null;

  @Index(composite: [CompositeIndex('subKey')])
  String? key;

  String? subKey;

  @Index()
  int? maxAgeDate;

  @Index()
  int? maxStaleDate;

  List<int>? content;

  int? statusCode;

  List<int>? headers;
}
