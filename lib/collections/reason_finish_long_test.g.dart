// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reason_finish_long_test.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetReasonFinishLongTestCollection on Isar {
  IsarCollection<ReasonFinishLongTest> get reasonFinishLongTests =>
      this.collection();
}

const ReasonFinishLongTestSchema = CollectionSchema(
  name: r'ReasonFinishLongTest',
  id: -1667412423793991142,
  properties: {
    r'reason': PropertySchema(
      id: 0,
      name: r'reason',
      type: IsarType.string,
    )
  },
  estimateSize: _reasonFinishLongTestEstimateSize,
  serialize: _reasonFinishLongTestSerialize,
  deserialize: _reasonFinishLongTestDeserialize,
  deserializeProp: _reasonFinishLongTestDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _reasonFinishLongTestGetId,
  getLinks: _reasonFinishLongTestGetLinks,
  attach: _reasonFinishLongTestAttach,
  version: '3.1.0+1',
);

int _reasonFinishLongTestEstimateSize(
  ReasonFinishLongTest object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.reason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _reasonFinishLongTestSerialize(
  ReasonFinishLongTest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.reason);
}

ReasonFinishLongTest _reasonFinishLongTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReasonFinishLongTest();
  object.id = id;
  object.reason = reader.readStringOrNull(offsets[0]);
  return object;
}

P _reasonFinishLongTestDeserializeProp<P>(
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

Id _reasonFinishLongTestGetId(ReasonFinishLongTest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _reasonFinishLongTestGetLinks(
    ReasonFinishLongTest object) {
  return [];
}

void _reasonFinishLongTestAttach(
    IsarCollection<dynamic> col, Id id, ReasonFinishLongTest object) {
  object.id = id;
}

extension ReasonFinishLongTestQueryWhereSort
    on QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QWhere> {
  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ReasonFinishLongTestQueryWhere
    on QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QWhereClause> {
  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterWhereClause>
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

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterWhereClause>
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

extension ReasonFinishLongTestQueryFilter on QueryBuilder<ReasonFinishLongTest,
    ReasonFinishLongTest, QFilterCondition> {
  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
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

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
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

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
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

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> reasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reason',
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> reasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reason',
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> reasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> reasonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> reasonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> reasonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> reasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> reasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
          QAfterFilterCondition>
      reasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
          QAfterFilterCondition>
      reasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> reasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reason',
        value: '',
      ));
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest,
      QAfterFilterCondition> reasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reason',
        value: '',
      ));
    });
  }
}

extension ReasonFinishLongTestQueryObject on QueryBuilder<ReasonFinishLongTest,
    ReasonFinishLongTest, QFilterCondition> {}

extension ReasonFinishLongTestQueryLinks on QueryBuilder<ReasonFinishLongTest,
    ReasonFinishLongTest, QFilterCondition> {}

extension ReasonFinishLongTestQuerySortBy
    on QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QSortBy> {
  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterSortBy>
      sortByReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.asc);
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterSortBy>
      sortByReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.desc);
    });
  }
}

extension ReasonFinishLongTestQuerySortThenBy
    on QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QSortThenBy> {
  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterSortBy>
      thenByReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.asc);
    });
  }

  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QAfterSortBy>
      thenByReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.desc);
    });
  }
}

extension ReasonFinishLongTestQueryWhereDistinct
    on QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QDistinct> {
  QueryBuilder<ReasonFinishLongTest, ReasonFinishLongTest, QDistinct>
      distinctByReason({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reason', caseSensitive: caseSensitive);
    });
  }
}

extension ReasonFinishLongTestQueryProperty on QueryBuilder<
    ReasonFinishLongTest, ReasonFinishLongTest, QQueryProperty> {
  QueryBuilder<ReasonFinishLongTest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ReasonFinishLongTest, String?, QQueryOperations>
      reasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reason');
    });
  }
}
