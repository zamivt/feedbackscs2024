// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'probetest.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProbeTestCollection on Isar {
  IsarCollection<ProbeTest> get probeTests => this.collection();
}

const ProbeTestSchema = CollectionSchema(
  name: r'ProbeTest',
  id: -955237004338419200,
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
    r'placeparestesia': PropertySchema(
      id: 17,
      name: r'placeparestesia',
      type: IsarType.object,
      target: r'PlaceParestesia',
    ),
    r'position': PropertySchema(
      id: 18,
      name: r'position',
      type: IsarType.string,
    ),
    r'program': PropertySchema(
      id: 19,
      name: r'program',
      type: IsarType.string,
    ),
    r'sideeffects': PropertySchema(
      id: 20,
      name: r'sideeffects',
      type: IsarType.object,
      target: r'SideEffects',
    ),
    r'status': PropertySchema(
      id: 21,
      name: r'status',
      type: IsarType.string,
    ),
    r'stoptesttime': PropertySchema(
      id: 22,
      name: r'stoptesttime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _probeTestEstimateSize,
  serialize: _probeTestSerialize,
  deserialize: _probeTestDeserialize,
  deserializeProp: _probeTestDeserializeProp,
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
  embeddedSchemas: {
    r'SideEffects': SideEffectsSchema,
    r'PlaceParestesia': PlaceParestesiaSchema
  },
  getId: _probeTestGetId,
  getLinks: _probeTestGetLinks,
  attach: _probeTestAttach,
  version: '3.1.0+1',
);

int _probeTestEstimateSize(
  ProbeTest object,
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
  {
    final value = object.placeparestesia;
    if (value != null) {
      bytesCount += 3 +
          PlaceParestesiaSchema.estimateSize(
              value, allOffsets[PlaceParestesia]!, allOffsets);
    }
  }
  bytesCount += 3 + object.position.length * 3;
  bytesCount += 3 + object.program.length * 3;
  {
    final value = object.sideeffects;
    if (value != null) {
      bytesCount += 3 +
          SideEffectsSchema.estimateSize(
              value, allOffsets[SideEffects]!, allOffsets);
    }
  }
  {
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _probeTestSerialize(
  ProbeTest object,
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
  writer.writeObject<PlaceParestesia>(
    offsets[17],
    allOffsets,
    PlaceParestesiaSchema.serialize,
    object.placeparestesia,
  );
  writer.writeString(offsets[18], object.position);
  writer.writeString(offsets[19], object.program);
  writer.writeObject<SideEffects>(
    offsets[20],
    allOffsets,
    SideEffectsSchema.serialize,
    object.sideeffects,
  );
  writer.writeString(offsets[21], object.status);
  writer.writeDateTime(offsets[22], object.stoptesttime);
}

ProbeTest _probeTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProbeTest();
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
  object.placeparestesia = reader.readObjectOrNull<PlaceParestesia>(
    offsets[17],
    PlaceParestesiaSchema.deserialize,
    allOffsets,
  );
  object.position = reader.readString(offsets[18]);
  object.program = reader.readString(offsets[19]);
  object.sideeffects = reader.readObjectOrNull<SideEffects>(
    offsets[20],
    SideEffectsSchema.deserialize,
    allOffsets,
  );
  object.status = reader.readStringOrNull(offsets[21]);
  object.stoptesttime = reader.readDateTimeOrNull(offsets[22]);
  return object;
}

P _probeTestDeserializeProp<P>(
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
      return (reader.readObjectOrNull<PlaceParestesia>(
        offset,
        PlaceParestesiaSchema.deserialize,
        allOffsets,
      )) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    case 20:
      return (reader.readObjectOrNull<SideEffects>(
        offset,
        SideEffectsSchema.deserialize,
        allOffsets,
      )) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _probeTestGetId(ProbeTest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _probeTestGetLinks(ProbeTest object) {
  return [];
}

void _probeTestAttach(IsarCollection<dynamic> col, Id id, ProbeTest object) {
  object.id = id;
}

extension ProbeTestQueryWhereSort
    on QueryBuilder<ProbeTest, ProbeTest, QWhere> {
  QueryBuilder<ProbeTest, ProbeTest, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhere> anyBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'begintesttime'),
      );
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhere> anyDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'durationtest'),
      );
    });
  }
}

extension ProbeTestQueryWhere
    on QueryBuilder<ProbeTest, ProbeTest, QWhereClause> {
  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> idBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> positionEqualTo(
      String position) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'position',
        value: [position],
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> positionNotEqualTo(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> electrodesEqualTo(
      String electrodes) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'electrodes',
        value: [electrodes],
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> electrodesNotEqualTo(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> begintesttimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'begintesttime',
        value: [null],
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> begintesttimeEqualTo(
      DateTime? begintesttime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'begintesttime',
        value: [begintesttime],
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> begintesttimeNotEqualTo(
      DateTime? begintesttime) {
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> begintesttimeLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> begintesttimeBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> durationtestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'durationtest',
        value: [null],
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> durationtestEqualTo(
      int? durationtest) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'durationtest',
        value: [durationtest],
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> durationtestNotEqualTo(
      int? durationtest) {
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> durationtestGreaterThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> durationtestLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterWhereClause> durationtestBetween(
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

extension ProbeTestQueryFilter
    on QueryBuilder<ProbeTest, ProbeTest, QFilterCondition> {
  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> amplitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'amplit',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> amplitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'amplit',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> amplitEqualTo(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> amplitGreaterThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> amplitLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> amplitBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      begintesttimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'begintesttime',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      begintesttimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'begintesttime',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      begintesttimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'begintesttime',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      bigsideeffectsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bigsideeffects',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      bigsideeffectsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bigsideeffects',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      bigsideeffectsEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bigsideeffects',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> conditionEqualTo(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> conditionLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> conditionBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> conditionStartsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> conditionEndsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> conditionContains(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> conditionMatches(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> conditionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'condition',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      conditionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'condition',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      currentlevelpainIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentlevelpain',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      currentlevelpainIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentlevelpain',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      currentlevelpainEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentlevelpain',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      dessymptoms1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dessymptoms1',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      dessymptoms1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dessymptoms1',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> dessymptoms1EqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dessymptoms1',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      dessymptoms2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dessymptoms2',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      dessymptoms2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dessymptoms2',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> dessymptoms2EqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dessymptoms2',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      dessymptoms3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dessymptoms3',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      dessymptoms3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dessymptoms3',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> dessymptoms3EqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dessymptoms3',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> durEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dur',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> durGreaterThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> durLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> durBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      durationtestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'durationtest',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      durationtestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'durationtest',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> durationtestEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationtest',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> durationtestBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> electrodesEqualTo(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> electrodesLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> electrodesBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> electrodesEndsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> electrodesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'electrodes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> electrodesMatches(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      electrodesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'electrodes',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      electrodesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'electrodes',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> fixformulaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fixformula',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      fixformulaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fixformula',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> fixformulaEqualTo(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> fixformulaLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> fixformulaBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> fixformulaEndsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> fixformulaContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fixformula',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> fixformulaMatches(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      fixformulaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fixformula',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      fixformulaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fixformula',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'formula',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'formula',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaEqualTo(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaGreaterThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaStartsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaEndsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaContains(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaMatches(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> formulaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formula',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      formulaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formula',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> freqEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freq',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> freqGreaterThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> freqLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> freqBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> hideampltEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hideamplt',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> hidedurEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hidedur',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> hidefreqEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hidefreq',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      placeparestesiaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeparestesia',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      placeparestesiaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeparestesia',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> positionEqualTo(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> positionGreaterThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> positionLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> positionBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> positionStartsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> positionEndsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> positionContains(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> positionMatches(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> positionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      positionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> programEqualTo(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> programGreaterThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> programLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> programBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> programStartsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> programEndsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> programContains(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> programMatches(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> programIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'program',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      programIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'program',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      sideeffectsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sideeffects',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      sideeffectsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sideeffects',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusEqualTo(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusGreaterThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusLessThan(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusBetween(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusStartsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusEndsWith(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusContains(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusMatches(
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      stoptesttimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stoptesttime',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
      stoptesttimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stoptesttime',
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> stoptesttimeEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stoptesttime',
        value: value,
      ));
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition>
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

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> stoptesttimeBetween(
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

extension ProbeTestQueryObject
    on QueryBuilder<ProbeTest, ProbeTest, QFilterCondition> {
  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> placeparestesia(
      FilterQuery<PlaceParestesia> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'placeparestesia');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterFilterCondition> sideeffects(
      FilterQuery<SideEffects> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'sideeffects');
    });
  }
}

extension ProbeTestQueryLinks
    on QueryBuilder<ProbeTest, ProbeTest, QFilterCondition> {}

extension ProbeTestQuerySortBy on QueryBuilder<ProbeTest, ProbeTest, QSortBy> {
  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByAmplitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByBegintesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByBigsideeffects() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bigsideeffects', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByBigsideeffectsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bigsideeffects', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByCurrentlevelpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentlevelpain', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy>
      sortByCurrentlevelpainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentlevelpain', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByDessymptoms1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms1', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByDessymptoms1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms1', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByDessymptoms2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms2', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByDessymptoms2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms2', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByDessymptoms3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms3', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByDessymptoms3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms3', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByDurationtestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByElectrodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByElectrodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByFixformula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fixformula', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByFixformulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fixformula', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByFormula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByFormulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByHideamplt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByHideampltDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByHidedurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByHidefreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByStoptesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> sortByStoptesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.desc);
    });
  }
}

extension ProbeTestQuerySortThenBy
    on QueryBuilder<ProbeTest, ProbeTest, QSortThenBy> {
  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByAmplitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByBegintesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByBigsideeffects() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bigsideeffects', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByBigsideeffectsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bigsideeffects', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByCondition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByConditionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condition', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByCurrentlevelpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentlevelpain', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy>
      thenByCurrentlevelpainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentlevelpain', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByDessymptoms1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms1', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByDessymptoms1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms1', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByDessymptoms2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms2', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByDessymptoms2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms2', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByDessymptoms3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms3', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByDessymptoms3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dessymptoms3', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByDurationtestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByElectrodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByElectrodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByFixformula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fixformula', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByFixformulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fixformula', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByFormula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByFormulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByHideamplt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByHideampltDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamplt', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByHidedurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByHidefreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByStoptesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.asc);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QAfterSortBy> thenByStoptesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.desc);
    });
  }
}

extension ProbeTestQueryWhereDistinct
    on QueryBuilder<ProbeTest, ProbeTest, QDistinct> {
  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amplit');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'begintesttime');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByBigsideeffects() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bigsideeffects');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByCondition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'condition', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByCurrentlevelpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentlevelpain');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByDessymptoms1() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dessymptoms1');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByDessymptoms2() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dessymptoms2');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByDessymptoms3() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dessymptoms3');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dur');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'durationtest');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByElectrodes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'electrodes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByFixformula(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fixformula', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByFormula(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formula', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'freq');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByHideamplt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hideamplt');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hidedur');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hidefreq');
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByPosition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'position', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByProgram(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'program', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProbeTest, ProbeTest, QDistinct> distinctByStoptesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stoptesttime');
    });
  }
}

extension ProbeTestQueryProperty
    on QueryBuilder<ProbeTest, ProbeTest, QQueryProperty> {
  QueryBuilder<ProbeTest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProbeTest, double?, QQueryOperations> amplitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amplit');
    });
  }

  QueryBuilder<ProbeTest, DateTime?, QQueryOperations> begintesttimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'begintesttime');
    });
  }

  QueryBuilder<ProbeTest, bool?, QQueryOperations> bigsideeffectsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bigsideeffects');
    });
  }

  QueryBuilder<ProbeTest, String, QQueryOperations> conditionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'condition');
    });
  }

  QueryBuilder<ProbeTest, int?, QQueryOperations> currentlevelpainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentlevelpain');
    });
  }

  QueryBuilder<ProbeTest, bool?, QQueryOperations> dessymptoms1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dessymptoms1');
    });
  }

  QueryBuilder<ProbeTest, bool?, QQueryOperations> dessymptoms2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dessymptoms2');
    });
  }

  QueryBuilder<ProbeTest, bool?, QQueryOperations> dessymptoms3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dessymptoms3');
    });
  }

  QueryBuilder<ProbeTest, int, QQueryOperations> durProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dur');
    });
  }

  QueryBuilder<ProbeTest, int?, QQueryOperations> durationtestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'durationtest');
    });
  }

  QueryBuilder<ProbeTest, String, QQueryOperations> electrodesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'electrodes');
    });
  }

  QueryBuilder<ProbeTest, String?, QQueryOperations> fixformulaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fixformula');
    });
  }

  QueryBuilder<ProbeTest, String?, QQueryOperations> formulaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formula');
    });
  }

  QueryBuilder<ProbeTest, int, QQueryOperations> freqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'freq');
    });
  }

  QueryBuilder<ProbeTest, bool, QQueryOperations> hideampltProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hideamplt');
    });
  }

  QueryBuilder<ProbeTest, bool, QQueryOperations> hidedurProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hidedur');
    });
  }

  QueryBuilder<ProbeTest, bool, QQueryOperations> hidefreqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hidefreq');
    });
  }

  QueryBuilder<ProbeTest, PlaceParestesia?, QQueryOperations>
      placeparestesiaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeparestesia');
    });
  }

  QueryBuilder<ProbeTest, String, QQueryOperations> positionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'position');
    });
  }

  QueryBuilder<ProbeTest, String, QQueryOperations> programProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'program');
    });
  }

  QueryBuilder<ProbeTest, SideEffects?, QQueryOperations>
      sideeffectsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sideeffects');
    });
  }

  QueryBuilder<ProbeTest, String?, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<ProbeTest, DateTime?, QQueryOperations> stoptesttimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stoptesttime');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SideEffectsSchema = Schema(
  name: r'SideEffects',
  id: -7497915128180670248,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _sideEffectsEstimateSize,
  serialize: _sideEffectsSerialize,
  deserialize: _sideEffectsDeserialize,
  deserializeProp: _sideEffectsDeserializeProp,
);

int _sideEffectsEstimateSize(
  SideEffects object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _sideEffectsSerialize(
  SideEffects object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
}

SideEffects _sideEffectsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SideEffects();
  object.name = reader.readStringOrNull(offsets[0]);
  return object;
}

P _sideEffectsDeserializeProp<P>(
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

extension SideEffectsQueryFilter
    on QueryBuilder<SideEffects, SideEffects, QFilterCondition> {
  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<SideEffects, SideEffects, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension SideEffectsQueryObject
    on QueryBuilder<SideEffects, SideEffects, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PlaceParestesiaSchema = Schema(
  name: r'PlaceParestesia',
  id: 2714395700080545571,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _placeParestesiaEstimateSize,
  serialize: _placeParestesiaSerialize,
  deserialize: _placeParestesiaDeserialize,
  deserializeProp: _placeParestesiaDeserializeProp,
);

int _placeParestesiaEstimateSize(
  PlaceParestesia object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _placeParestesiaSerialize(
  PlaceParestesia object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
}

PlaceParestesia _placeParestesiaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlaceParestesia();
  object.name = reader.readStringOrNull(offsets[0]);
  return object;
}

P _placeParestesiaDeserializeProp<P>(
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

extension PlaceParestesiaQueryFilter
    on QueryBuilder<PlaceParestesia, PlaceParestesia, QFilterCondition> {
  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaceParestesia, PlaceParestesia, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension PlaceParestesiaQueryObject
    on QueryBuilder<PlaceParestesia, PlaceParestesia, QFilterCondition> {}
