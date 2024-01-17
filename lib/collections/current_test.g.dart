// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_test.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCurrentTestCollection on Isar {
  IsarCollection<CurrentTest> get currentTests => this.collection();
}

const CurrentTestSchema = CollectionSchema(
  name: r'CurrentTest',
  id: 3663883832982452335,
  properties: {
    r'activetask': PropertySchema(
      id: 0,
      name: r'activetask',
      type: IsarType.string,
    ),
    r'idcombinationtest': PropertySchema(
      id: 1,
      name: r'idcombinationtest',
      type: IsarType.long,
    ),
    r'iddiarytest': PropertySchema(
      id: 2,
      name: r'iddiarytest',
      type: IsarType.long,
    ),
    r'idlongtest': PropertySchema(
      id: 3,
      name: r'idlongtest',
      type: IsarType.long,
    ),
    r'idprobetest': PropertySchema(
      id: 4,
      name: r'idprobetest',
      type: IsarType.long,
    ),
    r'idshorttest': PropertySchema(
      id: 5,
      name: r'idshorttest',
      type: IsarType.long,
    ),
    r'stage': PropertySchema(
      id: 6,
      name: r'stage',
      type: IsarType.string,
    )
  },
  estimateSize: _currentTestEstimateSize,
  serialize: _currentTestSerialize,
  deserialize: _currentTestDeserialize,
  deserializeProp: _currentTestDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _currentTestGetId,
  getLinks: _currentTestGetLinks,
  attach: _currentTestAttach,
  version: '3.1.0+1',
);

int _currentTestEstimateSize(
  CurrentTest object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.activetask;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.stage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _currentTestSerialize(
  CurrentTest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.activetask);
  writer.writeLong(offsets[1], object.idcombinationtest);
  writer.writeLong(offsets[2], object.iddiarytest);
  writer.writeLong(offsets[3], object.idlongtest);
  writer.writeLong(offsets[4], object.idprobetest);
  writer.writeLong(offsets[5], object.idshorttest);
  writer.writeString(offsets[6], object.stage);
}

CurrentTest _currentTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CurrentTest();
  object.activetask = reader.readStringOrNull(offsets[0]);
  object.id = id;
  object.idcombinationtest = reader.readLongOrNull(offsets[1]);
  object.iddiarytest = reader.readLongOrNull(offsets[2]);
  object.idlongtest = reader.readLongOrNull(offsets[3]);
  object.idprobetest = reader.readLongOrNull(offsets[4]);
  object.idshorttest = reader.readLongOrNull(offsets[5]);
  object.stage = reader.readStringOrNull(offsets[6]);
  return object;
}

P _currentTestDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
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

Id _currentTestGetId(CurrentTest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _currentTestGetLinks(CurrentTest object) {
  return [];
}

void _currentTestAttach(
    IsarCollection<dynamic> col, Id id, CurrentTest object) {
  object.id = id;
}

extension CurrentTestQueryWhereSort
    on QueryBuilder<CurrentTest, CurrentTest, QWhere> {
  QueryBuilder<CurrentTest, CurrentTest, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CurrentTestQueryWhere
    on QueryBuilder<CurrentTest, CurrentTest, QWhereClause> {
  QueryBuilder<CurrentTest, CurrentTest, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<CurrentTest, CurrentTest, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterWhereClause> idBetween(
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
}

extension CurrentTestQueryFilter
    on QueryBuilder<CurrentTest, CurrentTest, QFilterCondition> {
  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'activetask',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'activetask',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activetask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'activetask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'activetask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'activetask',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'activetask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'activetask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'activetask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'activetask',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activetask',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      activetaskIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'activetask',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idcombinationtestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idcombinationtest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idcombinationtestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idcombinationtest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idcombinationtestEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idcombinationtest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idcombinationtestGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idcombinationtest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idcombinationtestLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idcombinationtest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idcombinationtestBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idcombinationtest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      iddiarytestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iddiarytest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      iddiarytestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iddiarytest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      iddiarytestEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iddiarytest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      iddiarytestGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iddiarytest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      iddiarytestLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iddiarytest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      iddiarytestBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iddiarytest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idlongtestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idlongtest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idlongtestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idlongtest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idlongtestEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idlongtest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idlongtestGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idlongtest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idlongtestLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idlongtest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idlongtestBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idlongtest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idprobetestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idprobetest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idprobetestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idprobetest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idprobetestEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idprobetest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idprobetestGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idprobetest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idprobetestLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idprobetest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idprobetestBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idprobetest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idshorttestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'idshorttest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idshorttestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'idshorttest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idshorttestEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idshorttest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idshorttestGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idshorttest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idshorttestLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idshorttest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      idshorttestBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idshorttest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> stageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stage',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      stageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stage',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> stageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      stageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> stageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> stageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> stageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> stageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> stageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> stageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> stageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stage',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      stageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stage',
        value: '',
      ));
    });
  }
}

extension CurrentTestQueryObject
    on QueryBuilder<CurrentTest, CurrentTest, QFilterCondition> {}

extension CurrentTestQueryLinks
    on QueryBuilder<CurrentTest, CurrentTest, QFilterCondition> {}

extension CurrentTestQuerySortBy
    on QueryBuilder<CurrentTest, CurrentTest, QSortBy> {
  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByActivetask() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activetask', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByActivetaskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activetask', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy>
      sortByIdcombinationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idcombinationtest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy>
      sortByIdcombinationtestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idcombinationtest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByIddiarytest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iddiarytest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByIddiarytestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iddiarytest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByIdlongtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idlongtest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByIdlongtestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idlongtest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByIdprobetest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idprobetest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByIdprobetestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idprobetest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByIdshorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idshorttest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByIdshorttestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idshorttest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByStage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stage', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByStageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stage', Sort.desc);
    });
  }
}

extension CurrentTestQuerySortThenBy
    on QueryBuilder<CurrentTest, CurrentTest, QSortThenBy> {
  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByActivetask() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activetask', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByActivetaskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activetask', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy>
      thenByIdcombinationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idcombinationtest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy>
      thenByIdcombinationtestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idcombinationtest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByIddiarytest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iddiarytest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByIddiarytestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iddiarytest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByIdlongtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idlongtest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByIdlongtestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idlongtest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByIdprobetest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idprobetest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByIdprobetestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idprobetest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByIdshorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idshorttest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByIdshorttestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idshorttest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByStage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stage', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByStageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stage', Sort.desc);
    });
  }
}

extension CurrentTestQueryWhereDistinct
    on QueryBuilder<CurrentTest, CurrentTest, QDistinct> {
  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByActivetask(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activetask', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct>
      distinctByIdcombinationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idcombinationtest');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByIddiarytest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iddiarytest');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByIdlongtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idlongtest');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByIdprobetest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idprobetest');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByIdshorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'idshorttest');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByStage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stage', caseSensitive: caseSensitive);
    });
  }
}

extension CurrentTestQueryProperty
    on QueryBuilder<CurrentTest, CurrentTest, QQueryProperty> {
  QueryBuilder<CurrentTest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CurrentTest, String?, QQueryOperations> activetaskProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activetask');
    });
  }

  QueryBuilder<CurrentTest, int?, QQueryOperations>
      idcombinationtestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idcombinationtest');
    });
  }

  QueryBuilder<CurrentTest, int?, QQueryOperations> iddiarytestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iddiarytest');
    });
  }

  QueryBuilder<CurrentTest, int?, QQueryOperations> idlongtestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idlongtest');
    });
  }

  QueryBuilder<CurrentTest, int?, QQueryOperations> idprobetestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idprobetest');
    });
  }

  QueryBuilder<CurrentTest, int?, QQueryOperations> idshorttestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idshorttest');
    });
  }

  QueryBuilder<CurrentTest, String?, QQueryOperations> stageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stage');
    });
  }
}
