// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sideeffects_short_test.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSideEffectsShortTestCollection on Isar {
  IsarCollection<SideEffectsShortTest> get sideEffectsShortTests =>
      this.collection();
}

const SideEffectsShortTestSchema = CollectionSchema(
  name: r'SideEffectsShortTest',
  id: -6436764651293631984,
  properties: {
    r'sideeffectsshorttest': PropertySchema(
      id: 0,
      name: r'sideeffectsshorttest',
      type: IsarType.string,
    )
  },
  estimateSize: _sideEffectsShortTestEstimateSize,
  serialize: _sideEffectsShortTestSerialize,
  deserialize: _sideEffectsShortTestDeserialize,
  deserializeProp: _sideEffectsShortTestDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _sideEffectsShortTestGetId,
  getLinks: _sideEffectsShortTestGetLinks,
  attach: _sideEffectsShortTestAttach,
  version: '3.1.0+1',
);

int _sideEffectsShortTestEstimateSize(
  SideEffectsShortTest object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.sideeffectsshorttest;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _sideEffectsShortTestSerialize(
  SideEffectsShortTest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.sideeffectsshorttest);
}

SideEffectsShortTest _sideEffectsShortTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SideEffectsShortTest();
  object.id = id;
  object.sideeffectsshorttest = reader.readStringOrNull(offsets[0]);
  return object;
}

P _sideEffectsShortTestDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _sideEffectsShortTestGetId(SideEffectsShortTest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sideEffectsShortTestGetLinks(
    SideEffectsShortTest object) {
  return [];
}

void _sideEffectsShortTestAttach(
    IsarCollection<dynamic> col, Id id, SideEffectsShortTest object) {
  object.id = id;
}

extension SideEffectsShortTestQueryWhereSort
    on QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QWhere> {
  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SideEffectsShortTestQueryWhere
    on QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QWhereClause> {
  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterWhereClause>
      idBetween(
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

extension SideEffectsShortTestQueryFilter on QueryBuilder<SideEffectsShortTest,
    SideEffectsShortTest, QFilterCondition> {
  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> sideeffectsshorttestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sideeffectsshorttest',
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> sideeffectsshorttestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sideeffectsshorttest',
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> sideeffectsshorttestEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sideeffectsshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> sideeffectsshorttestGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sideeffectsshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> sideeffectsshorttestLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sideeffectsshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> sideeffectsshorttestBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sideeffectsshorttest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> sideeffectsshorttestStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sideeffectsshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> sideeffectsshorttestEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sideeffectsshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
          QAfterFilterCondition>
      sideeffectsshorttestContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sideeffectsshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
          QAfterFilterCondition>
      sideeffectsshorttestMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sideeffectsshorttest',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> sideeffectsshorttestIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sideeffectsshorttest',
        value: '',
      ));
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest,
      QAfterFilterCondition> sideeffectsshorttestIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sideeffectsshorttest',
        value: '',
      ));
    });
  }
}

extension SideEffectsShortTestQueryObject on QueryBuilder<SideEffectsShortTest,
    SideEffectsShortTest, QFilterCondition> {}

extension SideEffectsShortTestQueryLinks on QueryBuilder<SideEffectsShortTest,
    SideEffectsShortTest, QFilterCondition> {}

extension SideEffectsShortTestQuerySortBy
    on QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QSortBy> {
  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterSortBy>
      sortBySideeffectsshorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sideeffectsshorttest', Sort.asc);
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterSortBy>
      sortBySideeffectsshorttestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sideeffectsshorttest', Sort.desc);
    });
  }
}

extension SideEffectsShortTestQuerySortThenBy
    on QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QSortThenBy> {
  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterSortBy>
      thenBySideeffectsshorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sideeffectsshorttest', Sort.asc);
    });
  }

  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QAfterSortBy>
      thenBySideeffectsshorttestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sideeffectsshorttest', Sort.desc);
    });
  }
}

extension SideEffectsShortTestQueryWhereDistinct
    on QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QDistinct> {
  QueryBuilder<SideEffectsShortTest, SideEffectsShortTest, QDistinct>
      distinctBySideeffectsshorttest({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sideeffectsshorttest',
          caseSensitive: caseSensitive);
    });
  }
}

extension SideEffectsShortTestQueryProperty on QueryBuilder<
    SideEffectsShortTest, SideEffectsShortTest, QQueryProperty> {
  QueryBuilder<SideEffectsShortTest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SideEffectsShortTest, String?, QQueryOperations>
      sideeffectsshorttestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sideeffectsshorttest');
    });
  }
}
