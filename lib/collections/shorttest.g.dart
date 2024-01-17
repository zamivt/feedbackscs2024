// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shorttest.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIShortTestCollection on Isar {
  IsarCollection<IShortTest> get iShortTests => this.collection();
}

const IShortTestSchema = CollectionSchema(
  name: r'IShortTest',
  id: -1943602822124804380,
  properties: {
    r'amplit': PropertySchema(
      id: 0,
      name: r'amplit',
      type: IsarType.double,
    ),
    r'begintesttime': PropertySchema(
      id: 1,
      name: r'begintesttime',
      type: IsarType.dateTime,
    ),
    r'bigsideeffects': PropertySchema(
      id: 2,
      name: r'bigsideeffects',
      type: IsarType.bool,
    ),
    r'condition': PropertySchema(
      id: 3,
      name: r'condition',
      type: IsarType.string,
    ),
    r'currentlevelpain': PropertySchema(
      id: 4,
      name: r'currentlevelpain',
      type: IsarType.long,
    ),
    r'dessymptoms1': PropertySchema(
      id: 5,
      name: r'dessymptoms1',
      type: IsarType.bool,
    ),
    r'dessymptoms2': PropertySchema(
      id: 6,
      name: r'dessymptoms2',
      type: IsarType.bool,
    ),
    r'dessymptoms3': PropertySchema(
      id: 7,
      name: r'dessymptoms3',
      type: IsarType.bool,
    ),
    r'dur': PropertySchema(
      id: 8,
      name: r'dur',
      type: IsarType.long,
    ),
    r'durationtest': PropertySchema(
      id: 9,
      name: r'durationtest',
      type: IsarType.long,
    ),
    r'electrodes': PropertySchema(
      id: 10,
      name: r'electrodes',
      type: IsarType.string,
    ),
    r'fixformula': PropertySchema(
      id: 11,
      name: r'fixformula',
      type: IsarType.string,
    ),
    r'formula': PropertySchema(
      id: 12,
      name: r'formula',
      type: IsarType.string,
    ),
    r'freq': PropertySchema(
      id: 13,
      name: r'freq',
      type: IsarType.long,
    ),
    r'hideamplt': PropertySchema(
      id: 14,
      name: r'hideamplt',
      type: IsarType.bool,
    ),
    r'hidedur': PropertySchema(
      id: 15,
      name: r'hidedur',
      type: IsarType.bool,
    ),
    r'hidefreq': PropertySchema(
      id: 16,
      name: r'hidefreq',
      type: IsarType.bool,
    ),
    r'position': PropertySchema(
      id: 17,
      name: r'position',
      type: IsarType.string,
    ),
    r'program': PropertySchema(
      id: 18,
      name: r'program',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 19,
      name: r'status',
      type: IsarType.string,
    ),
    r'stoptesttime': PropertySchema(
      id: 20,
      name: r'stoptesttime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _iShortTestEstimateSize,
  serialize: _iShortTestSerialize,
  deserialize: _iShortTestDeserialize,
  deserializeProp: _iShortTestDeserializeProp,
  idName: r'id',
  indexes: {
    r'position': IndexSchema(
      id: 5117117876086213592,
      name: r'position',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'position',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'electrodes': IndexSchema(
      id: -8163605658744177914,
      name: r'electrodes',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'electrodes',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'begintesttime': IndexSchema(
      id: -1962357548727802925,
      name: r'begintesttime',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'begintesttime',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'durationtest': IndexSchema(
      id: -1576297246041578066,
      name: r'durationtest',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'durationtest',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _iShortTestGetId,
  getLinks: _iShortTestGetLinks,
  attach: _iShortTestAttach,
  version: '3.1.0+1',
);

int _iShortTestEstimateSize(
  IShortTest object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.condition.length * 3;
  bytesCount += 3 + object.electrodes.length * 3;
  {
    final value = object.fixformula;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.formula;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.position.length * 3;
  bytesCount += 3 + object.program.length * 3;
  {
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _iShortTestSerialize(
  IShortTest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.amplit);
  writer.writeDateTime(offsets[1], object.begintesttime);
  writer.writeBool(offsets[2], object.bigsideeffects);
  writer.writeString(offsets[3], object.condition);
  writer.writeLong(offsets[4], object.currentlevelpain);
  writer.writeBool(offsets[5], object.dessymptoms1);
  writer.writeBool(offsets[6], object.dessymptoms2);
  writer.writeBool(offsets[7], object.dessymptoms3);
  writer.writeLong(offsets[8], object.dur);
  writer.writeLong(offsets[9], object.durationtest);
  writer.writeString(offsets[10], object.electrodes);
  writer.writeString(offsets[11], object.fixformula);
  writer.writeString(offsets[12], object.formula);
  writer.writeLong(offsets[13], object.freq);
  writer.writeBool(offsets[14], object.hideamplt);
  writer.writeBool(offsets[15], object.hidedur);
  writer.writeBool(offsets[16], object.hidefreq);
  writer.writeString(offsets[17], object.position);
  writer.writeString(offsets[18], object.program);
  writer.writeString(offsets[19], object.status);
  writer.writeDateTime(offsets[20], object.stoptesttime);
}

IShortTest _iShortTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IShortTest();
  object.amplit = reader.readDoubleOrNull(offsets[0]);
  object.begintesttime = reader.readDateTimeOrNull(offsets[1]);
  object.bigsideeffects = reader.readBoolOrNull(offsets[2]);
  object.condition = reader.readString(offsets[3]);
  object.currentlevelpain = reader.readLongOrNull(offsets[4]);
  object.dessymptoms1 = reader.readBoolOrNull(offsets[5]);
  object.dessymptoms2 = reader.readBoolOrNull(offsets[6]);
  object.dessymptoms3 = reader.readBoolOrNull(offsets[7]);
  object.dur = reader.readLong(offsets[8]);
  object.durationtest = reader.readLongOrNull(offsets[9]);
  object.electrodes = reader.readString(offsets[10]);
  object.fixformula = reader.readStringOrNull(offsets[11]);
  object.formula = reader.readStringOrNull(offsets[12]);
  object.freq = reader.readLong(offsets[13]);
  object.hideamplt = reader.readBool(offsets[14]);
  object.hidedur = reader.readBool(offsets[15]);
  object.hidefreq = reader.readBool(offsets[16]);
  object.id = id;
  object.position = reader.readString(offsets[17]);
  object.program = reader.readString(offsets[18]);
  object.status = reader.readStringOrNull(offsets[19]);
  object.stoptesttime = reader.readDateTimeOrNull(offsets[20]);
  return object;
}

P _iShortTestDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readBool(offset)) as P;
    case 15:
      return (reader.readBool(offset)) as P;
    case 16:
      return (reader.readBool(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _iShortTestGetId(IShortTest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _iShortTestGetLinks(IShortTest object) {
  return [];
}

void _iShortTestAttach(IsarCollection<dynamic> col, Id id, IShortTest object) {
  object.id = id;
}

extension IShortTestQueryWhereSort
    on QueryBuilder<IShortTest, IShortTest, QWhere> {
  QueryBuilder<IShortTest, IShortTest, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhere> anyBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'begintesttime'),
      );
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhere> anyDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'durationtest'),
      );
    });
  }
}

extension IShortTestQueryWhere
    on QueryBuilder<IShortTest, IShortTest, QWhereClause> {
  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> idBetween(
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

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> positionEqualTo(
      String position) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'position',
        value: [position],
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> positionNotEqualTo(
      String position) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'position',
              lower: [],
              upper: [position],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'position',
              lower: [position],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'position',
              lower: [position],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'position',
              lower: [],
              upper: [position],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> electrodesEqualTo(
      String electrodes) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'electrodes',
        value: [electrodes],
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> electrodesNotEqualTo(
      String electrodes) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'electrodes',
              lower: [],
              upper: [electrodes],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'electrodes',
              lower: [electrodes],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'electrodes',
              lower: [electrodes],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'electrodes',
              lower: [],
              upper: [electrodes],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause>
      begintesttimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'begintesttime',
        value: [null],
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause>
      begintesttimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'begintesttime',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> begintesttimeEqualTo(
      DateTime? begintesttime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'begintesttime',
        value: [begintesttime],
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause>
      begintesttimeNotEqualTo(DateTime? begintesttime) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'begintesttime',
              lower: [],
              upper: [begintesttime],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'begintesttime',
              lower: [begintesttime],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'begintesttime',
              lower: [begintesttime],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'begintesttime',
              lower: [],
              upper: [begintesttime],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause>
      begintesttimeGreaterThan(
    DateTime? begintesttime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'begintesttime',
        lower: [begintesttime],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> begintesttimeLessThan(
    DateTime? begintesttime, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'begintesttime',
        lower: [],
        upper: [begintesttime],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> begintesttimeBetween(
    DateTime? lowerBegintesttime,
    DateTime? upperBegintesttime, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'begintesttime',
        lower: [lowerBegintesttime],
        includeLower: includeLower,
        upper: [upperBegintesttime],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> durationtestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'durationtest',
        value: [null],
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause>
      durationtestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'durationtest',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> durationtestEqualTo(
      int? durationtest) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'durationtest',
        value: [durationtest],
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause>
      durationtestNotEqualTo(int? durationtest) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'durationtest',
              lower: [],
              upper: [durationtest],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'durationtest',
              lower: [durationtest],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'durationtest',
              lower: [durationtest],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'durationtest',
              lower: [],
              upper: [durationtest],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause>
      durationtestGreaterThan(
    int? durationtest, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'durationtest',
        lower: [durationtest],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> durationtestLessThan(
    int? durationtest, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'durationtest',
        lower: [],
        upper: [durationtest],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterWhereClause> durationtestBetween(
    int? lowerDurationtest,
    int? upperDurationtest, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'durationtest',
        lower: [lowerDurationtest],
        includeLower: includeLower,
        upper: [upperDurationtest],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IShortTestQueryFilter
    on QueryBuilder<IShortTest, IShortTest, QFilterCondition> {
  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> amplitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'amplit',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      amplitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'amplit',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> amplitEqualTo(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> amplitGreaterThan(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> amplitLessThan(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> amplitBetween(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      begintesttimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'begintesttime',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      begintesttimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'begintesttime',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      begintesttimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'begintesttime',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      begintesttimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'begintesttime',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      begintesttimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'begintesttime',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      begintesttimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'begintesttime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      bigsideeffectsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bigsideeffects',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      bigsideeffectsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bigsideeffects',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      bigsideeffectsEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bigsideeffects',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> conditionEqualTo(
    String value, {
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      conditionGreaterThan(
    String value, {
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> conditionLessThan(
    String value, {
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> conditionBetween(
    String lower,
    String upper, {
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> conditionEndsWith(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> conditionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'condition',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> conditionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'condition',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      conditionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'condition',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      conditionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'condition',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      currentlevelpainIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentlevelpain',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      currentlevelpainIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentlevelpain',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      currentlevelpainEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentlevelpain',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      currentlevelpainGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentlevelpain',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      currentlevelpainLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentlevelpain',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      currentlevelpainBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentlevelpain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      dessymptoms1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dessymptoms1',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      dessymptoms1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dessymptoms1',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      dessymptoms1EqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dessymptoms1',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      dessymptoms2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dessymptoms2',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      dessymptoms2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dessymptoms2',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      dessymptoms2EqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dessymptoms2',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      dessymptoms3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dessymptoms3',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      dessymptoms3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dessymptoms3',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      dessymptoms3EqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dessymptoms3',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> durEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dur',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> durGreaterThan(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> durLessThan(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> durBetween(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      durationtestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'durationtest',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      durationtestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'durationtest',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      durationtestEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationtest',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      durationtestGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'durationtest',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      durationtestLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'durationtest',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      durationtestBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'durationtest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> electrodesEqualTo(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> electrodesBetween(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      electrodesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'electrodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> electrodesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'electrodes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      electrodesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'electrodes',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      electrodesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'electrodes',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      fixformulaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fixformula',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      fixformulaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fixformula',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> fixformulaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fixformula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      fixformulaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fixformula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      fixformulaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fixformula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> fixformulaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fixformula',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      fixformulaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fixformula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      fixformulaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fixformula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      fixformulaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fixformula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> fixformulaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fixformula',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      fixformulaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fixformula',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      fixformulaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fixformula',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> formulaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'formula',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      formulaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'formula',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> formulaEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      formulaGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'formula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> formulaLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'formula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> formulaBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'formula',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> formulaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'formula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> formulaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'formula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> formulaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'formula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> formulaMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'formula',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> formulaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formula',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      formulaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formula',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> freqEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freq',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> freqGreaterThan(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> freqLessThan(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> freqBetween(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> hideampltEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hideamplt',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> hidedurEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hidedur',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> hidefreqEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hidefreq',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> positionEqualTo(
    String value, {
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      positionGreaterThan(
    String value, {
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> positionLessThan(
    String value, {
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> positionBetween(
    String lower,
    String upper, {
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> positionEndsWith(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> positionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'position',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> positionMatches(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      positionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      positionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> programEqualTo(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> programLessThan(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> programBetween(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> programStartsWith(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> programEndsWith(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> programContains(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> programMatches(
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

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> programIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'program',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      programIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'program',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      stoptesttimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stoptesttime',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      stoptesttimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stoptesttime',
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      stoptesttimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stoptesttime',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      stoptesttimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stoptesttime',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      stoptesttimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stoptesttime',
        value: value,
      ));
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterFilterCondition>
      stoptesttimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stoptesttime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IShortTestQueryObject
    on QueryBuilder<IShortTest, IShortTest, QFilterCondition> {}

extension IShortTestQueryLinks
    on QueryBuilder<IShortTest, IShortTest, QFilterCondition> {}

extension IShortTestQuerySortBy
    on QueryBuilder<IShortTest, IShortTest, QSortBy> {
  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByAmplitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByBegintesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByBigsideeffects() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bigsideeffects', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy>
      sortByBigsideeffectsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bigsideeffects', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByCurrentlevelpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentlevelpain', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy>
      sortByCurrentlevelpainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentlevelpain', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByDessymptoms1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms1', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByDessymptoms1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms1', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByDessymptoms2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms2', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByDessymptoms2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms2', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByDessymptoms3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms3', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByDessymptoms3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms3', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByDurationtestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByElectrodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByElectrodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByFixformula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fixformula', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByFixformulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fixformula', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByFormula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByFormulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByHideamplt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByHideampltDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByHidedurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByHidefreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByStoptesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> sortByStoptesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.desc);
    });
  }
}

extension IShortTestQuerySortThenBy
    on QueryBuilder<IShortTest, IShortTest, QSortThenBy> {
  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByAmplitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByBegintesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByBigsideeffects() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bigsideeffects', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy>
      thenByBigsideeffectsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bigsideeffects', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByCurrentlevelpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentlevelpain', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy>
      thenByCurrentlevelpainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentlevelpain', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByDessymptoms1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms1', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByDessymptoms1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms1', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByDessymptoms2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms2', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByDessymptoms2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms2', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByDessymptoms3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms3', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByDessymptoms3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms3', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByDurationtestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByElectrodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByElectrodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByFixformula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fixformula', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByFixformulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fixformula', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByFormula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByFormulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByHideamplt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByHideampltDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByHidedurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByHidefreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByStoptesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.asc);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QAfterSortBy> thenByStoptesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.desc);
    });
  }
}

extension IShortTestQueryWhereDistinct
    on QueryBuilder<IShortTest, IShortTest, QDistinct> {
  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amplit');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'begintesttime');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByBigsideeffects() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bigsideeffects');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByCondition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'condition', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByCurrentlevelpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentlevelpain');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByDessymptoms1() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dessymptoms1');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByDessymptoms2() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dessymptoms2');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByDessymptoms3() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dessymptoms3');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dur');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'durationtest');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByElectrodes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'electrodes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByFixformula(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fixformula', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByFormula(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formula', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'freq');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByHideamplt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hideamplt');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hidedur');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hidefreq');
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByPosition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'position', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByProgram(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'program', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IShortTest, IShortTest, QDistinct> distinctByStoptesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stoptesttime');
    });
  }
}

extension IShortTestQueryProperty
    on QueryBuilder<IShortTest, IShortTest, QQueryProperty> {
  QueryBuilder<IShortTest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IShortTest, double?, QQueryOperations> amplitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amplit');
    });
  }

  QueryBuilder<IShortTest, DateTime?, QQueryOperations>
      begintesttimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'begintesttime');
    });
  }

  QueryBuilder<IShortTest, bool?, QQueryOperations> bigsideeffectsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bigsideeffects');
    });
  }

  QueryBuilder<IShortTest, String, QQueryOperations> conditionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'condition');
    });
  }

  QueryBuilder<IShortTest, int?, QQueryOperations> currentlevelpainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentlevelpain');
    });
  }

  QueryBuilder<IShortTest, bool?, QQueryOperations> dessymptoms1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dessymptoms1');
    });
  }

  QueryBuilder<IShortTest, bool?, QQueryOperations> dessymptoms2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dessymptoms2');
    });
  }

  QueryBuilder<IShortTest, bool?, QQueryOperations> dessymptoms3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dessymptoms3');
    });
  }

  QueryBuilder<IShortTest, int, QQueryOperations> durProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dur');
    });
  }

  QueryBuilder<IShortTest, int?, QQueryOperations> durationtestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'durationtest');
    });
  }

  QueryBuilder<IShortTest, String, QQueryOperations> electrodesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'electrodes');
    });
  }

  QueryBuilder<IShortTest, String?, QQueryOperations> fixformulaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fixformula');
    });
  }

  QueryBuilder<IShortTest, String?, QQueryOperations> formulaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formula');
    });
  }

  QueryBuilder<IShortTest, int, QQueryOperations> freqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'freq');
    });
  }

  QueryBuilder<IShortTest, bool, QQueryOperations> hideampltProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hideamplt');
    });
  }

  QueryBuilder<IShortTest, bool, QQueryOperations> hidedurProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hidedur');
    });
  }

  QueryBuilder<IShortTest, bool, QQueryOperations> hidefreqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hidefreq');
    });
  }

  QueryBuilder<IShortTest, String, QQueryOperations> positionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'position');
    });
  }

  QueryBuilder<IShortTest, String, QQueryOperations> programProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'program');
    });
  }

  QueryBuilder<IShortTest, String?, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<IShortTest, DateTime?, QQueryOperations> stoptesttimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stoptesttime');
    });
  }
}
