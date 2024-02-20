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
    r'amplit': PropertySchema(
      id: 1,
      name: r'amplit',
      type: IsarType.double,
    ),
    r'condition': PropertySchema(
      id: 2,
      name: r'condition',
      type: IsarType.string,
    ),
    r'countdoubleshorttest': PropertySchema(
      id: 3,
      name: r'countdoubleshorttest',
      type: IsarType.long,
    ),
    r'description': PropertySchema(
      id: 4,
      name: r'description',
      type: IsarType.string,
    ),
    r'dur': PropertySchema(
      id: 5,
      name: r'dur',
      type: IsarType.long,
    ),
    r'electrodes': PropertySchema(
      id: 6,
      name: r'electrodes',
      type: IsarType.string,
    ),
    r'freq': PropertySchema(
      id: 7,
      name: r'freq',
      type: IsarType.long,
    ),
    r'hideamplt': PropertySchema(
      id: 8,
      name: r'hideamplt',
      type: IsarType.bool,
    ),
    r'hidedur': PropertySchema(
      id: 9,
      name: r'hidedur',
      type: IsarType.bool,
    ),
    r'hidefreq': PropertySchema(
      id: 10,
      name: r'hidefreq',
      type: IsarType.bool,
    ),
    r'idcombinationtest': PropertySchema(
      id: 11,
      name: r'idcombinationtest',
      type: IsarType.long,
    ),
    r'iddiarytest': PropertySchema(
      id: 12,
      name: r'iddiarytest',
      type: IsarType.long,
    ),
    r'idlongtest': PropertySchema(
      id: 13,
      name: r'idlongtest',
      type: IsarType.long,
    ),
    r'idprobetest': PropertySchema(
      id: 14,
      name: r'idprobetest',
      type: IsarType.long,
    ),
    r'idshorttest': PropertySchema(
      id: 15,
      name: r'idshorttest',
      type: IsarType.long,
    ),
    r'position': PropertySchema(
      id: 16,
      name: r'position',
      type: IsarType.string,
    ),
    r'program': PropertySchema(
      id: 17,
      name: r'program',
      type: IsarType.string,
    ),
    r'stage': PropertySchema(
      id: 18,
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
    final value = object.condition;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.electrodes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.position;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.program;
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
  writer.writeDouble(offsets[1], object.amplit);
  writer.writeString(offsets[2], object.condition);
  writer.writeLong(offsets[3], object.countdoubleshorttest);
  writer.writeString(offsets[4], object.description);
  writer.writeLong(offsets[5], object.dur);
  writer.writeString(offsets[6], object.electrodes);
  writer.writeLong(offsets[7], object.freq);
  writer.writeBool(offsets[8], object.hideamplt);
  writer.writeBool(offsets[9], object.hidedur);
  writer.writeBool(offsets[10], object.hidefreq);
  writer.writeLong(offsets[11], object.idcombinationtest);
  writer.writeLong(offsets[12], object.iddiarytest);
  writer.writeLong(offsets[13], object.idlongtest);
  writer.writeLong(offsets[14], object.idprobetest);
  writer.writeLong(offsets[15], object.idshorttest);
  writer.writeString(offsets[16], object.position);
  writer.writeString(offsets[17], object.program);
  writer.writeString(offsets[18], object.stage);
}

CurrentTest _currentTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CurrentTest();
  object.activetask = reader.readStringOrNull(offsets[0]);
  object.amplit = reader.readDoubleOrNull(offsets[1]);
  object.condition = reader.readStringOrNull(offsets[2]);
  object.countdoubleshorttest = reader.readLongOrNull(offsets[3]);
  object.description = reader.readStringOrNull(offsets[4]);
  object.dur = reader.readLongOrNull(offsets[5]);
  object.electrodes = reader.readStringOrNull(offsets[6]);
  object.freq = reader.readLongOrNull(offsets[7]);
  object.hideamplt = reader.readBoolOrNull(offsets[8]);
  object.hidedur = reader.readBoolOrNull(offsets[9]);
  object.hidefreq = reader.readBoolOrNull(offsets[10]);
  object.id = id;
  object.idcombinationtest = reader.readLongOrNull(offsets[11]);
  object.iddiarytest = reader.readLongOrNull(offsets[12]);
  object.idlongtest = reader.readLongOrNull(offsets[13]);
  object.idprobetest = reader.readLongOrNull(offsets[14]);
  object.idshorttest = reader.readLongOrNull(offsets[15]);
  object.position = reader.readStringOrNull(offsets[16]);
  object.program = reader.readStringOrNull(offsets[17]);
  object.stage = reader.readStringOrNull(offsets[18]);
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
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readBoolOrNull(offset)) as P;
    case 10:
      return (reader.readBoolOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
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

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> amplitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'amplit',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      amplitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'amplit',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> amplitEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'amplit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      amplitGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'amplit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> amplitLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'amplit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> amplitBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'amplit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'condition',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'condition',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'condition',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'condition',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'condition',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      conditionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'condition',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      countdoubleshorttestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'countdoubleshorttest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      countdoubleshorttestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'countdoubleshorttest',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      countdoubleshorttestEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countdoubleshorttest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      countdoubleshorttestGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countdoubleshorttest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      countdoubleshorttestLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countdoubleshorttest',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      countdoubleshorttestBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countdoubleshorttest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> durIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dur',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> durIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dur',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> durEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dur',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> durGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dur',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> durLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dur',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> durBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dur',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'electrodes',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'electrodes',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'electrodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'electrodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'electrodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'electrodes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'electrodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'electrodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'electrodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'electrodes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'electrodes',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      electrodesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'electrodes',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> freqIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'freq',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      freqIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'freq',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> freqEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freq',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> freqGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'freq',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> freqLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'freq',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> freqBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'freq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      hideampltIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hideamplt',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      hideampltIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hideamplt',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      hideampltEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hideamplt',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      hidedurIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hidedur',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      hidedurIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hidedur',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> hidedurEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hidedur',
        value: value,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      hidefreqIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hidefreq',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      hidefreqIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hidefreq',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> hidefreqEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hidefreq',
        value: value,
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

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      positionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'position',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      positionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'position',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> positionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      positionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      positionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> positionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'position',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      positionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      positionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      positionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> positionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'position',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      positionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      positionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      programIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'program',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      programIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'program',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> programEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'program',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      programGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'program',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> programLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'program',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> programBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'program',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      programStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'program',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> programEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'program',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> programContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'program',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition> programMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'program',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      programIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'program',
        value: '',
      ));
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterFilterCondition>
      programIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'program',
        value: '',
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

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByAmplitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy>
      sortByCountdoubleshorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countdoubleshorttest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy>
      sortByCountdoubleshorttestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countdoubleshorttest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByElectrodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByElectrodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByHideamplt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByHideampltDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByHidedurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByHidefreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.desc);
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

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> sortByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
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

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByAmplitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy>
      thenByCountdoubleshorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countdoubleshorttest', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy>
      thenByCountdoubleshorttestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countdoubleshorttest', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByElectrodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByElectrodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByHideamplt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByHideampltDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByHidedurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByHidefreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.desc);
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

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QAfterSortBy> thenByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
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

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amplit');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByCondition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'condition', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct>
      distinctByCountdoubleshorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countdoubleshorttest');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dur');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByElectrodes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'electrodes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'freq');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByHideamplt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hideamplt');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hidedur');
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hidefreq');
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

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByPosition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'position', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CurrentTest, CurrentTest, QDistinct> distinctByProgram(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'program', caseSensitive: caseSensitive);
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

  QueryBuilder<CurrentTest, double?, QQueryOperations> amplitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amplit');
    });
  }

  QueryBuilder<CurrentTest, String?, QQueryOperations> conditionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'condition');
    });
  }

  QueryBuilder<CurrentTest, int?, QQueryOperations>
      countdoubleshorttestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countdoubleshorttest');
    });
  }

  QueryBuilder<CurrentTest, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<CurrentTest, int?, QQueryOperations> durProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dur');
    });
  }

  QueryBuilder<CurrentTest, String?, QQueryOperations> electrodesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'electrodes');
    });
  }

  QueryBuilder<CurrentTest, int?, QQueryOperations> freqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'freq');
    });
  }

  QueryBuilder<CurrentTest, bool?, QQueryOperations> hideampltProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hideamplt');
    });
  }

  QueryBuilder<CurrentTest, bool?, QQueryOperations> hidedurProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hidedur');
    });
  }

  QueryBuilder<CurrentTest, bool?, QQueryOperations> hidefreqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hidefreq');
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

  QueryBuilder<CurrentTest, String?, QQueryOperations> positionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'position');
    });
  }

  QueryBuilder<CurrentTest, String?, QQueryOperations> programProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'program');
    });
  }

  QueryBuilder<CurrentTest, String?, QQueryOperations> stageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stage');
    });
  }
}
