// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'before_test_short_test.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIBeforeTestShortTestCollection on Isar {
  IsarCollection<IBeforeTestShortTest> get iBeforeTestShortTests =>
      this.collection();
}

const IBeforeTestShortTestSchema = CollectionSchema(
  name: r'IBeforeTestShortTest',
  id: -4925896307763616584,
  properties: {
    r'amp': PropertySchema(
      id: 0,
      name: r'amp',
      type: IsarType.double,
    ),
    r'dur': PropertySchema(
      id: 1,
      name: r'dur',
      type: IsarType.long,
    ),
    r'electrode': PropertySchema(
      id: 2,
      name: r'electrode',
      type: IsarType.string,
    ),
    r'freq': PropertySchema(
      id: 3,
      name: r'freq',
      type: IsarType.long,
    ),
    r'prim': PropertySchema(
      id: 4,
      name: r'prim',
      type: IsarType.string,
    ),
    r'program': PropertySchema(
      id: 5,
      name: r'program',
      type: IsarType.string,
    )
  },
  estimateSize: _iBeforeTestShortTestEstimateSize,
  serialize: _iBeforeTestShortTestSerialize,
  deserialize: _iBeforeTestShortTestDeserialize,
  deserializeProp: _iBeforeTestShortTestDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _iBeforeTestShortTestGetId,
  getLinks: _iBeforeTestShortTestGetLinks,
  attach: _iBeforeTestShortTestAttach,
  version: '3.1.0+1',
);

int _iBeforeTestShortTestEstimateSize(
  IBeforeTestShortTest object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.electrode.length * 3;
  {
    final value = object.prim;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.program.length * 3;
  return bytesCount;
}

void _iBeforeTestShortTestSerialize(
  IBeforeTestShortTest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.amp);
  writer.writeLong(offsets[1], object.dur);
  writer.writeString(offsets[2], object.electrode);
  writer.writeLong(offsets[3], object.freq);
  writer.writeString(offsets[4], object.prim);
  writer.writeString(offsets[5], object.program);
}

IBeforeTestShortTest _iBeforeTestShortTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IBeforeTestShortTest();
  object.amp = reader.readDouble(offsets[0]);
  object.dur = reader.readLong(offsets[1]);
  object.electrode = reader.readString(offsets[2]);
  object.freq = reader.readLong(offsets[3]);
  object.id = id;
  object.prim = reader.readStringOrNull(offsets[4]);
  object.program = reader.readString(offsets[5]);
  return object;
}

P _iBeforeTestShortTestDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _iBeforeTestShortTestGetId(IBeforeTestShortTest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _iBeforeTestShortTestGetLinks(
    IBeforeTestShortTest object) {
  return [];
}

void _iBeforeTestShortTestAttach(
    IsarCollection<dynamic> col, Id id, IBeforeTestShortTest object) {
  object.id = id;
}

extension IBeforeTestShortTestQueryWhereSort
    on QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QWhere> {
  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IBeforeTestShortTestQueryWhere
    on QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QWhereClause> {
  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterWhereClause>
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterWhereClause>
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

extension IBeforeTestShortTestQueryFilter on QueryBuilder<IBeforeTestShortTest,
    IBeforeTestShortTest, QFilterCondition> {
  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> ampEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'amp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> ampGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'amp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> ampLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'amp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> ampBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'amp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> durEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dur',
        value: value,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> durGreaterThan(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> durLessThan(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> durBetween(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> electrodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'electrode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> electrodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'electrode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> electrodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'electrode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> electrodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'electrode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> electrodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'electrode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> electrodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'electrode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
          QAfterFilterCondition>
      electrodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'electrode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
          QAfterFilterCondition>
      electrodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'electrode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> electrodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'electrode',
        value: '',
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> electrodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'electrode',
        value: '',
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> freqEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freq',
        value: value,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> freqGreaterThan(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> freqLessThan(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> freqBetween(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> primIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'prim',
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> primIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'prim',
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> primEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> primGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> primLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> primBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prim',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> primStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> primEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
          QAfterFilterCondition>
      primContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prim',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
          QAfterFilterCondition>
      primMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prim',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> primIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prim',
        value: '',
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> primIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prim',
        value: '',
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> programEqualTo(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> programGreaterThan(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> programLessThan(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> programBetween(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> programStartsWith(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> programEndsWith(
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

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
          QAfterFilterCondition>
      programContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'program',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
          QAfterFilterCondition>
      programMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'program',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> programIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'program',
        value: '',
      ));
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest,
      QAfterFilterCondition> programIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'program',
        value: '',
      ));
    });
  }
}

extension IBeforeTestShortTestQueryObject on QueryBuilder<IBeforeTestShortTest,
    IBeforeTestShortTest, QFilterCondition> {}

extension IBeforeTestShortTestQueryLinks on QueryBuilder<IBeforeTestShortTest,
    IBeforeTestShortTest, QFilterCondition> {}

extension IBeforeTestShortTestQuerySortBy
    on QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QSortBy> {
  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByAmp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amp', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByAmpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amp', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByElectrode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrode', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByElectrodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrode', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByPrim() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prim', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByPrimDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prim', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      sortByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
    });
  }
}

extension IBeforeTestShortTestQuerySortThenBy
    on QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QSortThenBy> {
  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByAmp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amp', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByAmpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amp', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByElectrode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrode', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByElectrodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrode', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByPrim() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prim', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByPrimDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prim', Sort.desc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QAfterSortBy>
      thenByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
    });
  }
}

extension IBeforeTestShortTestQueryWhereDistinct
    on QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QDistinct> {
  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QDistinct>
      distinctByAmp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amp');
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QDistinct>
      distinctByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dur');
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QDistinct>
      distinctByElectrode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'electrode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QDistinct>
      distinctByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'freq');
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QDistinct>
      distinctByPrim({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prim', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IBeforeTestShortTest, IBeforeTestShortTest, QDistinct>
      distinctByProgram({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'program', caseSensitive: caseSensitive);
    });
  }
}

extension IBeforeTestShortTestQueryProperty on QueryBuilder<
    IBeforeTestShortTest, IBeforeTestShortTest, QQueryProperty> {
  QueryBuilder<IBeforeTestShortTest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IBeforeTestShortTest, double, QQueryOperations> ampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amp');
    });
  }

  QueryBuilder<IBeforeTestShortTest, int, QQueryOperations> durProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dur');
    });
  }

  QueryBuilder<IBeforeTestShortTest, String, QQueryOperations>
      electrodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'electrode');
    });
  }

  QueryBuilder<IBeforeTestShortTest, int, QQueryOperations> freqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'freq');
    });
  }

  QueryBuilder<IBeforeTestShortTest, String?, QQueryOperations> primProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prim');
    });
  }

  QueryBuilder<IBeforeTestShortTest, String, QQueryOperations>
      programProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'program');
    });
  }
}
