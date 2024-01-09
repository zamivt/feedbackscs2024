// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'longtest.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetILongTestCollection on Isar {
  IsarCollection<ILongTest> get iLongTests => this.collection();
}

const ILongTestSchema = CollectionSchema(
  name: r'ILongTest',
  id: 5122660923175798218,
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
    r'dur': PropertySchema(
      id: 2,
      name: r'dur',
      type: IsarType.long,
    ),
    r'durationtest': PropertySchema(
      id: 3,
      name: r'durationtest',
      type: IsarType.long,
    ),
    r'electrodes': PropertySchema(
      id: 4,
      name: r'electrodes',
      type: IsarType.string,
    ),
    r'formula': PropertySchema(
      id: 5,
      name: r'formula',
      type: IsarType.string,
    ),
    r'freq': PropertySchema(
      id: 6,
      name: r'freq',
      type: IsarType.long,
    ),
    r'hideamp': PropertySchema(
      id: 7,
      name: r'hideamp',
      type: IsarType.bool,
    ),
    r'hidedur': PropertySchema(
      id: 8,
      name: r'hidedur',
      type: IsarType.bool,
    ),
    r'hidefreq': PropertySchema(
      id: 9,
      name: r'hidefreq',
      type: IsarType.bool,
    ),
    r'ismoresuccess': PropertySchema(
      id: 10,
      name: r'ismoresuccess',
      type: IsarType.bool,
    ),
    r'markself': PropertySchema(
      id: 11,
      name: r'markself',
      type: IsarType.long,
    ),
    r'position': PropertySchema(
      id: 12,
      name: r'position',
      type: IsarType.string,
    ),
    r'program': PropertySchema(
      id: 13,
      name: r'program',
      type: IsarType.string,
    ),
    r'reasonstoptest': PropertySchema(
      id: 14,
      name: r'reasonstoptest',
      type: IsarType.object,
      target: r'ReasonStopTest',
    ),
    r'stoptesttime': PropertySchema(
      id: 15,
      name: r'stoptesttime',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _iLongTestEstimateSize,
  serialize: _iLongTestSerialize,
  deserialize: _iLongTestDeserialize,
  deserializeProp: _iLongTestDeserializeProp,
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
  embeddedSchemas: {r'ReasonStopTest': ReasonStopTestSchema},
  getId: _iLongTestGetId,
  getLinks: _iLongTestGetLinks,
  attach: _iLongTestAttach,
  version: '3.1.0+1',
);

int _iLongTestEstimateSize(
  ILongTest object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.electrodes.length * 3;
  bytesCount += 3 + object.formula.length * 3;
  bytesCount += 3 + object.position.length * 3;
  bytesCount += 3 + object.program.length * 3;
  {
    final value = object.reasonstoptest;
    if (value != null) {
      bytesCount += 3 +
          ReasonStopTestSchema.estimateSize(
              value, allOffsets[ReasonStopTest]!, allOffsets);
    }
  }
  return bytesCount;
}

void _iLongTestSerialize(
  ILongTest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.amplit);
  writer.writeDateTime(offsets[1], object.begintesttime);
  writer.writeLong(offsets[2], object.dur);
  writer.writeLong(offsets[3], object.durationtest);
  writer.writeString(offsets[4], object.electrodes);
  writer.writeString(offsets[5], object.formula);
  writer.writeLong(offsets[6], object.freq);
  writer.writeBool(offsets[7], object.hideamp);
  writer.writeBool(offsets[8], object.hidedur);
  writer.writeBool(offsets[9], object.hidefreq);
  writer.writeBool(offsets[10], object.ismoresuccess);
  writer.writeLong(offsets[11], object.markself);
  writer.writeString(offsets[12], object.position);
  writer.writeString(offsets[13], object.program);
  writer.writeObject<ReasonStopTest>(
    offsets[14],
    allOffsets,
    ReasonStopTestSchema.serialize,
    object.reasonstoptest,
  );
  writer.writeDateTime(offsets[15], object.stoptesttime);
}

ILongTest _iLongTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ILongTest();
  object.amplit = reader.readDouble(offsets[0]);
  object.begintesttime = reader.readDateTimeOrNull(offsets[1]);
  object.dur = reader.readLong(offsets[2]);
  object.durationtest = reader.readLongOrNull(offsets[3]);
  object.electrodes = reader.readString(offsets[4]);
  object.formula = reader.readString(offsets[5]);
  object.freq = reader.readLong(offsets[6]);
  object.hideamp = reader.readBool(offsets[7]);
  object.hidedur = reader.readBool(offsets[8]);
  object.hidefreq = reader.readBool(offsets[9]);
  object.id = id;
  object.ismoresuccess = reader.readBoolOrNull(offsets[10]);
  object.markself = reader.readLongOrNull(offsets[11]);
  object.position = reader.readString(offsets[12]);
  object.program = reader.readString(offsets[13]);
  object.reasonstoptest = reader.readObjectOrNull<ReasonStopTest>(
    offsets[14],
    ReasonStopTestSchema.deserialize,
    allOffsets,
  );
  object.stoptesttime = reader.readDateTimeOrNull(offsets[15]);
  return object;
}

P _iLongTestDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readBoolOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readObjectOrNull<ReasonStopTest>(
        offset,
        ReasonStopTestSchema.deserialize,
        allOffsets,
      )) as P;
    case 15:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _iLongTestGetId(ILongTest object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _iLongTestGetLinks(ILongTest object) {
  return [];
}

void _iLongTestAttach(IsarCollection<dynamic> col, Id id, ILongTest object) {
  object.id = id;
}

extension ILongTestQueryWhereSort
    on QueryBuilder<ILongTest, ILongTest, QWhere> {
  QueryBuilder<ILongTest, ILongTest, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhere> anyBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'begintesttime'),
      );
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhere> anyDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'durationtest'),
      );
    });
  }
}

extension ILongTestQueryWhere
    on QueryBuilder<ILongTest, ILongTest, QWhereClause> {
  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> idBetween(
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> positionEqualTo(
      String position) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'position',
        value: [position],
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> positionNotEqualTo(
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> electrodesEqualTo(
      String electrodes) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'electrodes',
        value: [electrodes],
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> electrodesNotEqualTo(
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> begintesttimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'begintesttime',
        value: [null],
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause>
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> begintesttimeEqualTo(
      DateTime? begintesttime) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'begintesttime',
        value: [begintesttime],
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> begintesttimeNotEqualTo(
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause>
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> begintesttimeLessThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> begintesttimeBetween(
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> durationtestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'durationtest',
        value: [null],
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause>
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> durationtestEqualTo(
      int? durationtest) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'durationtest',
        value: [durationtest],
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> durationtestNotEqualTo(
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> durationtestGreaterThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> durationtestLessThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterWhereClause> durationtestBetween(
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

extension ILongTestQueryFilter
    on QueryBuilder<ILongTest, ILongTest, QFilterCondition> {
  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> amplitEqualTo(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> amplitGreaterThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> amplitLessThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> amplitBetween(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      begintesttimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'begintesttime',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      begintesttimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'begintesttime',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      begintesttimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'begintesttime',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> durEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dur',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> durGreaterThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> durLessThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> durBetween(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      durationtestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'durationtest',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      durationtestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'durationtest',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> durationtestEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationtest',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> durationtestBetween(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> electrodesEqualTo(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> electrodesLessThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> electrodesBetween(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> electrodesEndsWith(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> electrodesContains(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> electrodesMatches(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      electrodesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'electrodes',
        value: '',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      electrodesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'electrodes',
        value: '',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> formulaEqualTo(
    String value, {
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> formulaGreaterThan(
    String value, {
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> formulaLessThan(
    String value, {
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> formulaBetween(
    String lower,
    String upper, {
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> formulaStartsWith(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> formulaEndsWith(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> formulaContains(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> formulaMatches(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> formulaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'formula',
        value: '',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      formulaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'formula',
        value: '',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> freqEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'freq',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> freqGreaterThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> freqLessThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> freqBetween(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> hideampEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hideamp',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> hidedurEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hidedur',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> hidefreqEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hidefreq',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      ismoresuccessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ismoresuccess',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      ismoresuccessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ismoresuccess',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      ismoresuccessEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ismoresuccess',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> markselfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'markself',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      markselfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'markself',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> markselfEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'markself',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> markselfGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'markself',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> markselfLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'markself',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> markselfBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'markself',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> positionEqualTo(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> positionGreaterThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> positionLessThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> positionBetween(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> positionStartsWith(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> positionEndsWith(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> positionContains(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> positionMatches(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> positionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      positionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'position',
        value: '',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> programEqualTo(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> programGreaterThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> programLessThan(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> programBetween(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> programStartsWith(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> programEndsWith(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> programContains(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> programMatches(
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> programIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'program',
        value: '',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      programIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'program',
        value: '',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      reasonstoptestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reasonstoptest',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      reasonstoptestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reasonstoptest',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      stoptesttimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stoptesttime',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
      stoptesttimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stoptesttime',
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> stoptesttimeEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stoptesttime',
        value: value,
      ));
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition>
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

  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> stoptesttimeBetween(
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

extension ILongTestQueryObject
    on QueryBuilder<ILongTest, ILongTest, QFilterCondition> {
  QueryBuilder<ILongTest, ILongTest, QAfterFilterCondition> reasonstoptest(
      FilterQuery<ReasonStopTest> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'reasonstoptest');
    });
  }
}

extension ILongTestQueryLinks
    on QueryBuilder<ILongTest, ILongTest, QFilterCondition> {}

extension ILongTestQuerySortBy on QueryBuilder<ILongTest, ILongTest, QSortBy> {
  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByAmplitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByBegintesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByDurationtestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByElectrodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByElectrodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByFormula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByFormulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByHideamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamp', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByHideampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamp', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByHidedurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByHidefreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByIsmoresuccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ismoresuccess', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByIsmoresuccessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ismoresuccess', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByMarkself() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'markself', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByMarkselfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'markself', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByStoptesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> sortByStoptesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.desc);
    });
  }
}

extension ILongTestQuerySortThenBy
    on QueryBuilder<ILongTest, ILongTest, QSortThenBy> {
  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByAmplitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amplit', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByBegintesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'begintesttime', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByDurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dur', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByDurationtestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durationtest', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByElectrodes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByElectrodesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'electrodes', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByFormula() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByFormulaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'formula', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByFreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'freq', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByHideamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamp', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByHideampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hideamp', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByHidedurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidedur', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByHidefreqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hidefreq', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByIsmoresuccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ismoresuccess', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByIsmoresuccessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ismoresuccess', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByMarkself() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'markself', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByMarkselfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'markself', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByPosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByPositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'position', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByProgram() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByProgramDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'program', Sort.desc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByStoptesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.asc);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QAfterSortBy> thenByStoptesttimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stoptesttime', Sort.desc);
    });
  }
}

extension ILongTestQueryWhereDistinct
    on QueryBuilder<ILongTest, ILongTest, QDistinct> {
  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByAmplit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amplit');
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByBegintesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'begintesttime');
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByDur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dur');
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByDurationtest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'durationtest');
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByElectrodes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'electrodes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByFormula(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'formula', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByFreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'freq');
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByHideamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hideamp');
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByHidedur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hidedur');
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByHidefreq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hidefreq');
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByIsmoresuccess() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ismoresuccess');
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByMarkself() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'markself');
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByPosition(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'position', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByProgram(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'program', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ILongTest, ILongTest, QDistinct> distinctByStoptesttime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stoptesttime');
    });
  }
}

extension ILongTestQueryProperty
    on QueryBuilder<ILongTest, ILongTest, QQueryProperty> {
  QueryBuilder<ILongTest, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ILongTest, double, QQueryOperations> amplitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amplit');
    });
  }

  QueryBuilder<ILongTest, DateTime?, QQueryOperations> begintesttimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'begintesttime');
    });
  }

  QueryBuilder<ILongTest, int, QQueryOperations> durProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dur');
    });
  }

  QueryBuilder<ILongTest, int?, QQueryOperations> durationtestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'durationtest');
    });
  }

  QueryBuilder<ILongTest, String, QQueryOperations> electrodesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'electrodes');
    });
  }

  QueryBuilder<ILongTest, String, QQueryOperations> formulaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'formula');
    });
  }

  QueryBuilder<ILongTest, int, QQueryOperations> freqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'freq');
    });
  }

  QueryBuilder<ILongTest, bool, QQueryOperations> hideampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hideamp');
    });
  }

  QueryBuilder<ILongTest, bool, QQueryOperations> hidedurProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hidedur');
    });
  }

  QueryBuilder<ILongTest, bool, QQueryOperations> hidefreqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hidefreq');
    });
  }

  QueryBuilder<ILongTest, bool?, QQueryOperations> ismoresuccessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ismoresuccess');
    });
  }

  QueryBuilder<ILongTest, int?, QQueryOperations> markselfProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'markself');
    });
  }

  QueryBuilder<ILongTest, String, QQueryOperations> positionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'position');
    });
  }

  QueryBuilder<ILongTest, String, QQueryOperations> programProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'program');
    });
  }

  QueryBuilder<ILongTest, ReasonStopTest?, QQueryOperations>
      reasonstoptestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reasonstoptest');
    });
  }

  QueryBuilder<ILongTest, DateTime?, QQueryOperations> stoptesttimeProperty() {
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

const ReasonStopTestSchema = Schema(
  name: r'ReasonStopTest',
  id: -1890757616954119166,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _reasonStopTestEstimateSize,
  serialize: _reasonStopTestSerialize,
  deserialize: _reasonStopTestDeserialize,
  deserializeProp: _reasonStopTestDeserializeProp,
);

int _reasonStopTestEstimateSize(
  ReasonStopTest object,
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

void _reasonStopTestSerialize(
  ReasonStopTest object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
}

ReasonStopTest _reasonStopTestDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ReasonStopTest();
  object.name = reader.readStringOrNull(offsets[0]);
  return object;
}

P _reasonStopTestDeserializeProp<P>(
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

extension ReasonStopTestQueryFilter
    on QueryBuilder<ReasonStopTest, ReasonStopTest, QFilterCondition> {
  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
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

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
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

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
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

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
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

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
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

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
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

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ReasonStopTest, ReasonStopTest, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension ReasonStopTestQueryObject
    on QueryBuilder<ReasonStopTest, ReasonStopTest, QFilterCondition> {}
