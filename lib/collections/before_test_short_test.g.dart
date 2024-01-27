// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'before_test_short_test.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIBeforeTestCollection on Isar {
  IsarCollection<IBeforeTest> get iBeforeTests => this.collection();
}

const IBeforeTestSchema = CollectionSchema(
  name: r'IBeforeTest',
  id: 1250021363393854306,
  properties: {
    r'amplit': PropertySchema(
      id: 0,
      name: r'amplit',
      type: IsarType.double,
    ),
    r'dur': PropertySchema(
      id: 1,
      name: r'dur',
      type: IsarType.long,
    ),
    r'electrodes': PropertySchema(
      id: 2,
      name: r'electrodes',
      type: IsarType.string,
    ),
    r'freq': PropertySchema(
      id: 3,
      name: r'freq',
      type: IsarType.long,
    ),
    r'program': PropertySchema(
      id: 4,
      name: r'program',
      type: IsarType.string,
    )
  },
  estimateSize: _iBeforeTestEstimateSize,
  serialize: _iBeforeTestSerialize,
  deserialize: _iBeforeTestDeserialize,
  deserializeProp: _iBeforeTestDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _iBeforeTestGetId,
  getLinks: _iBeforeTestGetLinks,
  attach: _iBeforeTestAttach,
  version: '3.1.0+1',
);

int _iBeforeTestEstimateSize(
  IBeforeTest object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.electrodes.length * 3;
  bytesCount += 3 + object.program.length * 3;
  return bytesCount;
}

void _iBeforeTestSerialize(
  IBeforeTest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.amplit);
  writer.writeLong(offsets[1], object.dur);
  writer.writeString(offsets[2], object.electrodes);
  writer.writeLong(offsets[3], object.freq);
  writer.writeString(offsets[4], object.program);
}

IBeforeTest _iBeforeTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IBeforeTest();
  object.amplit = reader.readDouble(offsets[0]);
  object.dur = reader.readLong(offsets[1]);
  object.electrodes = reader.readString(offsets[2]);
  object.freq = reader.readLong(offsets[3]);
  object.id = id;
  object.program = reader.readString(offsets[4]);
  return object;
}

P _iBeforeTestDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _iBeforeTestGetId(IBeforeTest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _iBeforeTestGetLinks(IBeforeTest object) {
  return [];
}

void _iBeforeTestAttach(
    IsarCollection<dynamic> col, Id id, IBeforeTest object) {
  object.id = id;
}

extension IBeforeTestQueryWhereSort
    on QueryBuilder<IBeforeTest, IBeforeTest, QWhere> {
  QueryBuilder<IBeforeTest, IBeforeTest, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IBeforeTestQueryWhere
    on QueryBuilder<IBeforeTest, IBeforeTest, QWhereClause> {
  QueryBuilder<IBeforeTest, IBeforeTest, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterWhereClause> idBetween(
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

extension IBeforeTestQueryFilter
    on QueryBuilder<IBeforeTest, IBeforeTest, QFilterCondition> {
  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> amplitEqualTo(
    double value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      amplitGreaterThan(
    double value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> amplitLessThan(
    double value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> amplitBetween(
    double lower,
    double upper, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> durEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dur',
        value: value,
      ));
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> durGreaterThan(
    int value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> durLessThan(
    int value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> durBetween(
    int lower,
    int upper, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      electrodesEqualTo(
    String value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      electrodesGreaterThan(
    String value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      electrodesLessThan(
    String value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      electrodesBetween(
    String lower,
    String upper, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      electrodesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'electrodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      electrodesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'electrodes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      electrodesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'electrodes',
        value: '',
      ));
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      electrodesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'electrodes',
        value: '',
      ));
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> freqEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freq',
        value: value,
      ));
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> freqGreaterThan(
    int value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> freqLessThan(
    int value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> freqBetween(
    int lower,
    int upper, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> programEqualTo(
    String value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      programGreaterThan(
    String value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> programLessThan(
    String value, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> programBetween(
    String lower,
    String upper, {
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> programEndsWith(
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> programContains(
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition> programMatches(
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

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      programIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'program',
        value: '',
      ));
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterFilterCondition>
      programIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'program',
        value: '',
      ));
    });
  }
}

extension IBeforeTestQueryObject
    on QueryBuilder<IBeforeTest, IBeforeTest, QFilterCondition> {}

extension IBeforeTestQueryLinks
    on QueryBuilder<IBeforeTest, IBeforeTest, QFilterCondition> {}

extension IBeforeTestQuerySortBy
    on QueryBuilder<IBeforeTest, IBeforeTest, QSortBy> {
  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> sortByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> sortByAmplitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> sortByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> sortByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> sortByElectrodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> sortByElectrodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> sortByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> sortByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> sortByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> sortByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
    });
  }
}

extension IBeforeTestQuerySortThenBy
    on QueryBuilder<IBeforeTest, IBeforeTest, QSortThenBy> {
  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByAmplitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByElectrodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByElectrodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QAfterSortBy> thenByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
    });
  }
}

extension IBeforeTestQueryWhereDistinct
    on QueryBuilder<IBeforeTest, IBeforeTest, QDistinct> {
  QueryBuilder<IBeforeTest, IBeforeTest, QDistinct> distinctByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amplit');
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QDistinct> distinctByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dur');
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QDistinct> distinctByElectrodes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'electrodes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QDistinct> distinctByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'freq');
    });
  }

  QueryBuilder<IBeforeTest, IBeforeTest, QDistinct> distinctByProgram(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'program', caseSensitive: caseSensitive);
    });
  }
}

extension IBeforeTestQueryProperty
    on QueryBuilder<IBeforeTest, IBeforeTest, QQueryProperty> {
  QueryBuilder<IBeforeTest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IBeforeTest, double, QQueryOperations> amplitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amplit');
    });
  }

  QueryBuilder<IBeforeTest, int, QQueryOperations> durProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dur');
    });
  }

  QueryBuilder<IBeforeTest, String, QQueryOperations> electrodesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'electrodes');
    });
  }

  QueryBuilder<IBeforeTest, int, QQueryOperations> freqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'freq');
    });
  }

  QueryBuilder<IBeforeTest, String, QQueryOperations> programProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'program');
    });
  }
}
