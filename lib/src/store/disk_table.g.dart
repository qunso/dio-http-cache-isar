// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_table.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDiskTableCollection on Isar {
  IsarCollection<DiskTable> get diskTables => this.collection();
}

const DiskTableSchema = CollectionSchema(
  name: r'DiskTable',
  id: 6353624042989075579,
  properties: {
    r'content': PropertySchema(
      id: 0,
      name: r'content',
      type: IsarType.longList,
    ),
    r'headers': PropertySchema(
      id: 1,
      name: r'headers',
      type: IsarType.longList,
    ),
    r'key': PropertySchema(
      id: 2,
      name: r'key',
      type: IsarType.string,
    ),
    r'maxAgeDate': PropertySchema(
      id: 3,
      name: r'maxAgeDate',
      type: IsarType.long,
    ),
    r'maxStaleDate': PropertySchema(
      id: 4,
      name: r'maxStaleDate',
      type: IsarType.long,
    ),
    r'statusCode': PropertySchema(
      id: 5,
      name: r'statusCode',
      type: IsarType.long,
    ),
    r'subKey': PropertySchema(
      id: 6,
      name: r'subKey',
      type: IsarType.string,
    )
  },
  estimateSize: _diskTableEstimateSize,
  serialize: _diskTableSerialize,
  deserialize: _diskTableDeserialize,
  deserializeProp: _diskTableDeserializeProp,
  idName: r'id',
  indexes: {
    r'key_subKey': IndexSchema(
      id: 2546502422822915924,
      name: r'key_subKey',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'key',
          type: IndexType.hash,
          caseSensitive: true,
        ),
        IndexPropertySchema(
          name: r'subKey',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'maxAgeDate': IndexSchema(
      id: -6253822000981472784,
      name: r'maxAgeDate',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'maxAgeDate',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'maxStaleDate': IndexSchema(
      id: 8691578756650240934,
      name: r'maxStaleDate',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'maxStaleDate',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _diskTableGetId,
  getLinks: _diskTableGetLinks,
  attach: _diskTableAttach,
  version: '3.1.0+1',
);

int _diskTableEstimateSize(
  DiskTable object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.content;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.headers;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.key;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subKey;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _diskTableSerialize(
  DiskTable object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLongList(offsets[0], object.content);
  writer.writeLongList(offsets[1], object.headers);
  writer.writeString(offsets[2], object.key);
  writer.writeLong(offsets[3], object.maxAgeDate);
  writer.writeLong(offsets[4], object.maxStaleDate);
  writer.writeLong(offsets[5], object.statusCode);
  writer.writeString(offsets[6], object.subKey);
}

DiskTable _diskTableDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DiskTable();
  object.content = reader.readLongList(offsets[0]);
  object.headers = reader.readLongList(offsets[1]);
  object.id = id;
  object.key = reader.readStringOrNull(offsets[2]);
  object.maxAgeDate = reader.readLongOrNull(offsets[3]);
  object.maxStaleDate = reader.readLongOrNull(offsets[4]);
  object.statusCode = reader.readLongOrNull(offsets[5]);
  object.subKey = reader.readStringOrNull(offsets[6]);
  return object;
}

P _diskTableDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongList(offset)) as P;
    case 1:
      return (reader.readLongList(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _diskTableGetId(DiskTable object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _diskTableGetLinks(DiskTable object) {
  return [];
}

void _diskTableAttach(IsarCollection<dynamic> col, Id id, DiskTable object) {
  object.id = id;
}

extension DiskTableQueryWhereSort
    on QueryBuilder<DiskTable, DiskTable, QWhere> {
  QueryBuilder<DiskTable, DiskTable, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhere> anyMaxAgeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'maxAgeDate'),
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhere> anyMaxStaleDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'maxStaleDate'),
      );
    });
  }
}

extension DiskTableQueryWhere
    on QueryBuilder<DiskTable, DiskTable, QWhereClause> {
  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> keyIsNullAnySubKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key_subKey',
        value: [null],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause>
      keyIsNotNullAnySubKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'key_subKey',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> keyEqualToAnySubKey(
      String? key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key_subKey',
        value: [key],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> keyNotEqualToAnySubKey(
      String? key) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key_subKey',
              lower: [],
              upper: [key],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key_subKey',
              lower: [key],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key_subKey',
              lower: [key],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key_subKey',
              lower: [],
              upper: [key],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> keyEqualToSubKeyIsNull(
      String? key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key_subKey',
        value: [key, null],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause>
      keyEqualToSubKeyIsNotNull(String? key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'key_subKey',
        lower: [key, null],
        includeLower: false,
        upper: [
          key,
        ],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> keySubKeyEqualTo(
      String? key, String? subKey) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key_subKey',
        value: [key, subKey],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause>
      keyEqualToSubKeyNotEqualTo(String? key, String? subKey) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key_subKey',
              lower: [key],
              upper: [key, subKey],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key_subKey',
              lower: [key, subKey],
              includeLower: false,
              upper: [key],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key_subKey',
              lower: [key, subKey],
              includeLower: false,
              upper: [key],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key_subKey',
              lower: [key],
              upper: [key, subKey],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxAgeDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'maxAgeDate',
        value: [null],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxAgeDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'maxAgeDate',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxAgeDateEqualTo(
      int? maxAgeDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'maxAgeDate',
        value: [maxAgeDate],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxAgeDateNotEqualTo(
      int? maxAgeDate) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'maxAgeDate',
              lower: [],
              upper: [maxAgeDate],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'maxAgeDate',
              lower: [maxAgeDate],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'maxAgeDate',
              lower: [maxAgeDate],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'maxAgeDate',
              lower: [],
              upper: [maxAgeDate],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxAgeDateGreaterThan(
    int? maxAgeDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'maxAgeDate',
        lower: [maxAgeDate],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxAgeDateLessThan(
    int? maxAgeDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'maxAgeDate',
        lower: [],
        upper: [maxAgeDate],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxAgeDateBetween(
    int? lowerMaxAgeDate,
    int? upperMaxAgeDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'maxAgeDate',
        lower: [lowerMaxAgeDate],
        includeLower: includeLower,
        upper: [upperMaxAgeDate],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxStaleDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'maxStaleDate',
        value: [null],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause>
      maxStaleDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'maxStaleDate',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxStaleDateEqualTo(
      int? maxStaleDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'maxStaleDate',
        value: [maxStaleDate],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxStaleDateNotEqualTo(
      int? maxStaleDate) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'maxStaleDate',
              lower: [],
              upper: [maxStaleDate],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'maxStaleDate',
              lower: [maxStaleDate],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'maxStaleDate',
              lower: [maxStaleDate],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'maxStaleDate',
              lower: [],
              upper: [maxStaleDate],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxStaleDateGreaterThan(
    int? maxStaleDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'maxStaleDate',
        lower: [maxStaleDate],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxStaleDateLessThan(
    int? maxStaleDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'maxStaleDate',
        lower: [],
        upper: [maxStaleDate],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterWhereClause> maxStaleDateBetween(
    int? lowerMaxStaleDate,
    int? upperMaxStaleDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'maxStaleDate',
        lower: [lowerMaxStaleDate],
        includeLower: includeLower,
        upper: [upperMaxStaleDate],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DiskTableQueryFilter
    on QueryBuilder<DiskTable, DiskTable, QFilterCondition> {
  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> contentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'content',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> contentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'content',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      contentElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      contentElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      contentElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      contentElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      contentLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'content',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'content',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'content',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      contentLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'content',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      contentLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'content',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      contentLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'content',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> headersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'headers',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> headersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'headers',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      headersElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headers',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      headersElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'headers',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      headersElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'headers',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      headersElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'headers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      headersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'headers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> headersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'headers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      headersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'headers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      headersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'headers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      headersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'headers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      headersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'headers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'key',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'key',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> maxAgeDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxAgeDate',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      maxAgeDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxAgeDate',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> maxAgeDateEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAgeDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      maxAgeDateGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxAgeDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> maxAgeDateLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxAgeDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> maxAgeDateBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxAgeDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      maxStaleDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxStaleDate',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      maxStaleDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxStaleDate',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> maxStaleDateEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxStaleDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      maxStaleDateGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxStaleDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      maxStaleDateLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxStaleDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> maxStaleDateBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxStaleDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> statusCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'statusCode',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      statusCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'statusCode',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> statusCodeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition>
      statusCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> statusCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'statusCode',
        value: value,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> statusCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'statusCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subKey',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subKey',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subKey',
        value: '',
      ));
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterFilterCondition> subKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subKey',
        value: '',
      ));
    });
  }
}

extension DiskTableQueryObject
    on QueryBuilder<DiskTable, DiskTable, QFilterCondition> {}

extension DiskTableQueryLinks
    on QueryBuilder<DiskTable, DiskTable, QFilterCondition> {}

extension DiskTableQuerySortBy on QueryBuilder<DiskTable, DiskTable, QSortBy> {
  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> sortByMaxAgeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAgeDate', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> sortByMaxAgeDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAgeDate', Sort.desc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> sortByMaxStaleDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxStaleDate', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> sortByMaxStaleDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxStaleDate', Sort.desc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> sortByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> sortByStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.desc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> sortBySubKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subKey', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> sortBySubKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subKey', Sort.desc);
    });
  }
}

extension DiskTableQuerySortThenBy
    on QueryBuilder<DiskTable, DiskTable, QSortThenBy> {
  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenByMaxAgeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAgeDate', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenByMaxAgeDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAgeDate', Sort.desc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenByMaxStaleDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxStaleDate', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenByMaxStaleDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxStaleDate', Sort.desc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenByStatusCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusCode', Sort.desc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenBySubKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subKey', Sort.asc);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QAfterSortBy> thenBySubKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subKey', Sort.desc);
    });
  }
}

extension DiskTableQueryWhereDistinct
    on QueryBuilder<DiskTable, DiskTable, QDistinct> {
  QueryBuilder<DiskTable, DiskTable, QDistinct> distinctByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content');
    });
  }

  QueryBuilder<DiskTable, DiskTable, QDistinct> distinctByHeaders() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'headers');
    });
  }

  QueryBuilder<DiskTable, DiskTable, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DiskTable, DiskTable, QDistinct> distinctByMaxAgeDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxAgeDate');
    });
  }

  QueryBuilder<DiskTable, DiskTable, QDistinct> distinctByMaxStaleDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxStaleDate');
    });
  }

  QueryBuilder<DiskTable, DiskTable, QDistinct> distinctByStatusCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statusCode');
    });
  }

  QueryBuilder<DiskTable, DiskTable, QDistinct> distinctBySubKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subKey', caseSensitive: caseSensitive);
    });
  }
}

extension DiskTableQueryProperty
    on QueryBuilder<DiskTable, DiskTable, QQueryProperty> {
  QueryBuilder<DiskTable, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DiskTable, List<int>?, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<DiskTable, List<int>?, QQueryOperations> headersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'headers');
    });
  }

  QueryBuilder<DiskTable, String?, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<DiskTable, int?, QQueryOperations> maxAgeDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxAgeDate');
    });
  }

  QueryBuilder<DiskTable, int?, QQueryOperations> maxStaleDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxStaleDate');
    });
  }

  QueryBuilder<DiskTable, int?, QQueryOperations> statusCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statusCode');
    });
  }

  QueryBuilder<DiskTable, String?, QQueryOperations> subKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subKey');
    });
  }
}
