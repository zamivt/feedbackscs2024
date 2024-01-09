// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placeparestesia_short_test.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlaceParestesiaShortTestCollection on Isar {
  IsarCollection<PlaceParestesiaShortTest> get placeParestesiaShortTests =>
      this.collection();
}

const PlaceParestesiaShortTestSchema = CollectionSchema(
  name: r'PlaceParestesiaShortTest',
  id: -3777505868745688230,
  properties: {
    r'placeparestesiashorttest': PropertySchema(
      id: 0,
      name: r'placeparestesiashorttest',
      type: IsarType.string,
    )
  },
  estimateSize: _placeParestesiaShortTestEstimateSize,
  serialize: _placeParestesiaShortTestSerialize,
  deserialize: _placeParestesiaShortTestDeserialize,
  deserializeProp: _placeParestesiaShortTestDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _placeParestesiaShortTestGetId,
  getLinks: _placeParestesiaShortTestGetLinks,
  attach: _placeParestesiaShortTestAttach,
  version: '3.1.0+1',
);

int _placeParestesiaShortTestEstimateSize(
  PlaceParestesiaShortTest object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.placeparestesiashorttest;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _placeParestesiaShortTestSerialize(
  PlaceParestesiaShortTest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.placeparestesiashorttest);
}

PlaceParestesiaShortTest _placeParestesiaShortTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlaceParestesiaShortTest();
  object.id = id;
  object.placeparestesiashorttest = reader.readStringOrNull(offsets[0]);
  return object;
}

P _placeParestesiaShortTestDeserializeProp<P>(
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

Id _placeParestesiaShortTestGetId(PlaceParestesiaShortTest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _placeParestesiaShortTestGetLinks(
    PlaceParestesiaShortTest object) {
  return [];
}

void _placeParestesiaShortTestAttach(
    IsarCollection<dynamic> col, Id id, PlaceParestesiaShortTest object) {
  object.id = id;
}

extension PlaceParestesiaShortTestQueryWhereSort on QueryBuilder<
    PlaceParestesiaShortTest, PlaceParestesiaShortTest, QWhere> {
  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlaceParestesiaShortTestQueryWhere on QueryBuilder<
    PlaceParestesiaShortTest, PlaceParestesiaShortTest, QWhereClause> {
  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterWhereClause> idBetween(
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

extension PlaceParestesiaShortTestQueryFilter on QueryBuilder<
    PlaceParestesiaShortTest, PlaceParestesiaShortTest, QFilterCondition> {
  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
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

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
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

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
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

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> placeparestesiashorttestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeparestesiashorttest',
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> placeparestesiashorttestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeparestesiashorttest',
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> placeparestesiashorttestEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeparestesiashorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> placeparestesiashorttestGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'placeparestesiashorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> placeparestesiashorttestLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'placeparestesiashorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> placeparestesiashorttestBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'placeparestesiashorttest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> placeparestesiashorttestStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'placeparestesiashorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> placeparestesiashorttestEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'placeparestesiashorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
          QAfterFilterCondition>
      placeparestesiashorttestContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'placeparestesiashorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
          QAfterFilterCondition>
      placeparestesiashorttestMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'placeparestesiashorttest',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> placeparestesiashorttestIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeparestesiashorttest',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest,
      QAfterFilterCondition> placeparestesiashorttestIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'placeparestesiashorttest',
        value: '',
      ));
    });
  }
}

extension PlaceParestesiaShortTestQueryObject on QueryBuilder<
    PlaceParestesiaShortTest, PlaceParestesiaShortTest, QFilterCondition> {}

extension PlaceParestesiaShortTestQueryLinks on QueryBuilder<
    PlaceParestesiaShortTest, PlaceParestesiaShortTest, QFilterCondition> {}

extension PlaceParestesiaShortTestQuerySortBy on QueryBuilder<
    PlaceParestesiaShortTest, PlaceParestesiaShortTest, QSortBy> {
  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest, QAfterSortBy>
      sortByPlaceparestesiashorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeparestesiashorttest', Sort.asc);
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest, QAfterSortBy>
      sortByPlaceparestesiashorttestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeparestesiashorttest', Sort.desc);
    });
  }
}

extension PlaceParestesiaShortTestQuerySortThenBy on QueryBuilder<
    PlaceParestesiaShortTest, PlaceParestesiaShortTest, QSortThenBy> {
  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest, QAfterSortBy>
      thenByPlaceparestesiashorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeparestesiashorttest', Sort.asc);
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest, QAfterSortBy>
      thenByPlaceparestesiashorttestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeparestesiashorttest', Sort.desc);
    });
  }
}

extension PlaceParestesiaShortTestQueryWhereDistinct on QueryBuilder<
    PlaceParestesiaShortTest, PlaceParestesiaShortTest, QDistinct> {
  QueryBuilder<PlaceParestesiaShortTest, PlaceParestesiaShortTest, QDistinct>
      distinctByPlaceparestesiashorttest({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeparestesiashorttest',
          caseSensitive: caseSensitive);
    });
  }
}

extension PlaceParestesiaShortTestQueryProperty on QueryBuilder<
    PlaceParestesiaShortTest, PlaceParestesiaShortTest, QQueryProperty> {
  QueryBuilder<PlaceParestesiaShortTest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlaceParestesiaShortTest, String?, QQueryOperations>
      placeparestesiashorttestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeparestesiashorttest');
    });
  }
}
