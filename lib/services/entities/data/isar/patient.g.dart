// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIPatientCollection on Isar {
  IsarCollection<IPatient> get iPatients => this.collection();
}

const IPatientSchema = CollectionSchema(
  name: r'IPatient',
  id: -7043799312183322577,
  properties: {
    r'activetask': PropertySchema(
      id: 0,
      name: r'activetask',
      type: IsarType.string,
    ),
    r'anamnez': PropertySchema(
      id: 1,
      name: r'anamnez',
      type: IsarType.string,
    ),
    r'diagnoz': PropertySchema(
      id: 2,
      name: r'diagnoz',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 3,
      name: r'email',
      type: IsarType.string,
    ),
    r'fio': PropertySchema(
      id: 4,
      name: r'fio',
      type: IsarType.string,
    ),
    r'histrorystage': PropertySchema(
      id: 5,
      name: r'histrorystage',
      type: IsarType.string,
    ),
    r'islicense': PropertySchema(
      id: 6,
      name: r'islicense',
      type: IsarType.bool,
    ),
    r'isremotepatient': PropertySchema(
      id: 7,
      name: r'isremotepatient',
      type: IsarType.bool,
    ),
    r'levelmaxpain': PropertySchema(
      id: 8,
      name: r'levelmaxpain',
      type: IsarType.long,
    ),
    r'modelneuro': PropertySchema(
      id: 9,
      name: r'modelneuro',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 10,
      name: r'phone',
      type: IsarType.string,
    ),
    r'prioritylevelpain': PropertySchema(
      id: 11,
      name: r'prioritylevelpain',
      type: IsarType.long,
    ),
    r'priorityshorttest': PropertySchema(
      id: 12,
      name: r'priorityshorttest',
      type: IsarType.string,
    ),
    r'sex': PropertySchema(
      id: 13,
      name: r'sex',
      type: IsarType.string,
    ),
    r'sympotoms1': PropertySchema(
      id: 14,
      name: r'sympotoms1',
      type: IsarType.string,
    ),
    r'sympotoms2': PropertySchema(
      id: 15,
      name: r'sympotoms2',
      type: IsarType.string,
    ),
    r'sympotoms3': PropertySchema(
      id: 16,
      name: r'sympotoms3',
      type: IsarType.string,
    ),
    r'teststage': PropertySchema(
      id: 17,
      name: r'teststage',
      type: IsarType.string,
    ),
    r'timelie': PropertySchema(
      id: 18,
      name: r'timelie',
      type: IsarType.long,
    ),
    r'timemove': PropertySchema(
      id: 19,
      name: r'timemove',
      type: IsarType.long,
    ),
    r'timeseat': PropertySchema(
      id: 20,
      name: r'timeseat',
      type: IsarType.long,
    )
  },
  estimateSize: _iPatientEstimateSize,
  serialize: _iPatientSerialize,
  deserialize: _iPatientDeserialize,
  deserializeProp: _iPatientDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _iPatientGetId,
  getLinks: _iPatientGetLinks,
  attach: _iPatientAttach,
  version: '3.1.0+1',
);

int _iPatientEstimateSize(
  IPatient object,
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
  bytesCount += 3 + object.anamnez.length * 3;
  bytesCount += 3 + object.diagnoz.length * 3;
  bytesCount += 3 + object.email.length * 3;
  bytesCount += 3 + object.fio.length * 3;
  {
    final value = object.histrorystage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.modelneuro.length * 3;
  bytesCount += 3 + object.phone.length * 3;
  bytesCount += 3 + object.priorityshorttest.length * 3;
  bytesCount += 3 + object.sex.length * 3;
  bytesCount += 3 + object.sympotoms1.length * 3;
  bytesCount += 3 + object.sympotoms2.length * 3;
  {
    final value = object.sympotoms3;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.teststage.length * 3;
  return bytesCount;
}

void _iPatientSerialize(
  IPatient object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.activetask);
  writer.writeString(offsets[1], object.anamnez);
  writer.writeString(offsets[2], object.diagnoz);
  writer.writeString(offsets[3], object.email);
  writer.writeString(offsets[4], object.fio);
  writer.writeString(offsets[5], object.histrorystage);
  writer.writeBool(offsets[6], object.islicense);
  writer.writeBool(offsets[7], object.isremotepatient);
  writer.writeLong(offsets[8], object.levelmaxpain);
  writer.writeString(offsets[9], object.modelneuro);
  writer.writeString(offsets[10], object.phone);
  writer.writeLong(offsets[11], object.prioritylevelpain);
  writer.writeString(offsets[12], object.priorityshorttest);
  writer.writeString(offsets[13], object.sex);
  writer.writeString(offsets[14], object.sympotoms1);
  writer.writeString(offsets[15], object.sympotoms2);
  writer.writeString(offsets[16], object.sympotoms3);
  writer.writeString(offsets[17], object.teststage);
  writer.writeLong(offsets[18], object.timelie);
  writer.writeLong(offsets[19], object.timemove);
  writer.writeLong(offsets[20], object.timeseat);
}

IPatient _iPatientDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IPatient();
  object.activetask = reader.readStringOrNull(offsets[0]);
  object.anamnez = reader.readString(offsets[1]);
  object.diagnoz = reader.readString(offsets[2]);
  object.email = reader.readString(offsets[3]);
  object.fio = reader.readString(offsets[4]);
  object.histrorystage = reader.readStringOrNull(offsets[5]);
  object.id = id;
  object.islicense = reader.readBoolOrNull(offsets[6]);
  object.isremotepatient = reader.readBool(offsets[7]);
  object.levelmaxpain = reader.readLong(offsets[8]);
  object.modelneuro = reader.readString(offsets[9]);
  object.phone = reader.readString(offsets[10]);
  object.prioritylevelpain = reader.readLong(offsets[11]);
  object.priorityshorttest = reader.readString(offsets[12]);
  object.sex = reader.readString(offsets[13]);
  object.sympotoms1 = reader.readString(offsets[14]);
  object.sympotoms2 = reader.readString(offsets[15]);
  object.sympotoms3 = reader.readStringOrNull(offsets[16]);
  object.teststage = reader.readString(offsets[17]);
  object.timelie = reader.readLong(offsets[18]);
  object.timemove = reader.readLong(offsets[19]);
  object.timeseat = reader.readLong(offsets[20]);
  return object;
}

P _iPatientDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readLong(offset)) as P;
    case 19:
      return (reader.readLong(offset)) as P;
    case 20:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _iPatientGetId(IPatient object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _iPatientGetLinks(IPatient object) {
  return [];
}

void _iPatientAttach(IsarCollection<dynamic> col, Id id, IPatient object) {
  object.id = id;
}

extension IPatientQueryWhereSort on QueryBuilder<IPatient, IPatient, QWhere> {
  QueryBuilder<IPatient, IPatient, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IPatientQueryWhere on QueryBuilder<IPatient, IPatient, QWhereClause> {
  QueryBuilder<IPatient, IPatient, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<IPatient, IPatient, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterWhereClause> idBetween(
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

extension IPatientQueryFilter
    on QueryBuilder<IPatient, IPatient, QFilterCondition> {
  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> activetaskIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'activetask',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      activetaskIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'activetask',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> activetaskEqualTo(
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

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> activetaskGreaterThan(
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

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> activetaskLessThan(
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

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> activetaskBetween(
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

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> activetaskStartsWith(
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

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> activetaskEndsWith(
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

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> activetaskContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'activetask',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> activetaskMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'activetask',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> activetaskIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activetask',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      activetaskIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'activetask',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> anamnezEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'anamnez',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> anamnezGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'anamnez',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> anamnezLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'anamnez',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> anamnezBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'anamnez',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> anamnezStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'anamnez',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> anamnezEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'anamnez',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> anamnezContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'anamnez',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> anamnezMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'anamnez',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> anamnezIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'anamnez',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> anamnezIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'anamnez',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> diagnozEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diagnoz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> diagnozGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diagnoz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> diagnozLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diagnoz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> diagnozBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diagnoz',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> diagnozStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'diagnoz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> diagnozEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'diagnoz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> diagnozContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'diagnoz',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> diagnozMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'diagnoz',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> diagnozIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diagnoz',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> diagnozIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'diagnoz',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> emailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> fioEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> fioGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> fioLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> fioBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> fioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> fioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> fioContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> fioMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> fioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fio',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> fioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fio',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      histrorystageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'histrorystage',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      histrorystageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'histrorystage',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> histrorystageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'histrorystage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      histrorystageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'histrorystage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> histrorystageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'histrorystage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> histrorystageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'histrorystage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      histrorystageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'histrorystage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> histrorystageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'histrorystage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> histrorystageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'histrorystage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> histrorystageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'histrorystage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      histrorystageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'histrorystage',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      histrorystageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'histrorystage',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> islicenseIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'islicense',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> islicenseIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'islicense',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> islicenseEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'islicense',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      isremotepatientEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isremotepatient',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> levelmaxpainEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'levelmaxpain',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      levelmaxpainGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'levelmaxpain',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> levelmaxpainLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'levelmaxpain',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> levelmaxpainBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'levelmaxpain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> modelneuroEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modelneuro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> modelneuroGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modelneuro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> modelneuroLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modelneuro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> modelneuroBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modelneuro',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> modelneuroStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'modelneuro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> modelneuroEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'modelneuro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> modelneuroContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'modelneuro',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> modelneuroMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'modelneuro',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> modelneuroIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modelneuro',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      modelneuroIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modelneuro',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> phoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> phoneGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> phoneLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> phoneBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> phoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> phoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      prioritylevelpainEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prioritylevelpain',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      prioritylevelpainGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prioritylevelpain',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      prioritylevelpainLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prioritylevelpain',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      prioritylevelpainBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prioritylevelpain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      priorityshorttestEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priorityshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      priorityshorttestGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priorityshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      priorityshorttestLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priorityshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      priorityshorttestBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priorityshorttest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      priorityshorttestStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'priorityshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      priorityshorttestEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'priorityshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      priorityshorttestContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'priorityshorttest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      priorityshorttestMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'priorityshorttest',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      priorityshorttestIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priorityshorttest',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      priorityshorttestIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'priorityshorttest',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sexEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sexGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sexLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sexBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sexStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sexEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sexContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sexMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sex',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sex',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sex',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms1EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sympotoms1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms1GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sympotoms1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms1LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sympotoms1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms1Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sympotoms1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sympotoms1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sympotoms1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms1Contains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sympotoms1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms1Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sympotoms1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sympotoms1',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      sympotoms1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sympotoms1',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms2EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sympotoms2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms2GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sympotoms2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms2LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sympotoms2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms2Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sympotoms2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sympotoms2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sympotoms2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms2Contains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sympotoms2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms2Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sympotoms2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sympotoms2',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      sympotoms2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sympotoms2',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sympotoms3',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      sympotoms3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sympotoms3',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms3EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sympotoms3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms3GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sympotoms3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms3LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sympotoms3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms3Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sympotoms3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms3StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sympotoms3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms3EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sympotoms3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms3Contains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sympotoms3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms3Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sympotoms3',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> sympotoms3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sympotoms3',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      sympotoms3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sympotoms3',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> teststageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teststage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> teststageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teststage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> teststageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teststage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> teststageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teststage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> teststageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teststage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> teststageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teststage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> teststageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teststage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> teststageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teststage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> teststageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teststage',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition>
      teststageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teststage',
        value: '',
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timelieEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timelie',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timelieGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timelie',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timelieLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timelie',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timelieBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timelie',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timemoveEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timemove',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timemoveGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timemove',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timemoveLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timemove',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timemoveBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timemove',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timeseatEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeseat',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timeseatGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeseat',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timeseatLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeseat',
        value: value,
      ));
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterFilterCondition> timeseatBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeseat',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IPatientQueryObject
    on QueryBuilder<IPatient, IPatient, QFilterCondition> {}

extension IPatientQueryLinks
    on QueryBuilder<IPatient, IPatient, QFilterCondition> {}

extension IPatientQuerySortBy on QueryBuilder<IPatient, IPatient, QSortBy> {
  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByActivetask() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activetask', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByActivetaskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activetask', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByAnamnez() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anamnez', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByAnamnezDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anamnez', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByDiagnoz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnoz', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByDiagnozDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnoz', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByFio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fio', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByFioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fio', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByHistrorystage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'histrorystage', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByHistrorystageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'histrorystage', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByIslicense() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'islicense', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByIslicenseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'islicense', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByIsremotepatient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isremotepatient', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByIsremotepatientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isremotepatient', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByLevelmaxpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'levelmaxpain', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByLevelmaxpainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'levelmaxpain', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByModelneuro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelneuro', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByModelneuroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelneuro', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByPrioritylevelpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioritylevelpain', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByPrioritylevelpainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioritylevelpain', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByPriorityshorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priorityshorttest', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByPriorityshorttestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priorityshorttest', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortBySympotoms1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms1', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortBySympotoms1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms1', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortBySympotoms2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms2', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortBySympotoms2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms2', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortBySympotoms3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms3', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortBySympotoms3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms3', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByTeststage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teststage', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByTeststageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teststage', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByTimelie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timelie', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByTimelieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timelie', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByTimemove() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timemove', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByTimemoveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timemove', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByTimeseat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeseat', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> sortByTimeseatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeseat', Sort.desc);
    });
  }
}

extension IPatientQuerySortThenBy
    on QueryBuilder<IPatient, IPatient, QSortThenBy> {
  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByActivetask() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activetask', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByActivetaskDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activetask', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByAnamnez() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anamnez', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByAnamnezDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'anamnez', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByDiagnoz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnoz', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByDiagnozDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diagnoz', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByFio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fio', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByFioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fio', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByHistrorystage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'histrorystage', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByHistrorystageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'histrorystage', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByIslicense() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'islicense', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByIslicenseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'islicense', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByIsremotepatient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isremotepatient', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByIsremotepatientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isremotepatient', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByLevelmaxpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'levelmaxpain', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByLevelmaxpainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'levelmaxpain', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByModelneuro() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelneuro', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByModelneuroDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modelneuro', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByPrioritylevelpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioritylevelpain', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByPrioritylevelpainDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prioritylevelpain', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByPriorityshorttest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priorityshorttest', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByPriorityshorttestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priorityshorttest', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenBySex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenBySexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sex', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenBySympotoms1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms1', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenBySympotoms1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms1', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenBySympotoms2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms2', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenBySympotoms2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms2', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenBySympotoms3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms3', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenBySympotoms3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sympotoms3', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByTeststage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teststage', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByTeststageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teststage', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByTimelie() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timelie', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByTimelieDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timelie', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByTimemove() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timemove', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByTimemoveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timemove', Sort.desc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByTimeseat() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeseat', Sort.asc);
    });
  }

  QueryBuilder<IPatient, IPatient, QAfterSortBy> thenByTimeseatDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeseat', Sort.desc);
    });
  }
}

extension IPatientQueryWhereDistinct
    on QueryBuilder<IPatient, IPatient, QDistinct> {
  QueryBuilder<IPatient, IPatient, QDistinct> distinctByActivetask(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activetask', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByAnamnez(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'anamnez', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByDiagnoz(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diagnoz', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByFio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fio', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByHistrorystage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'histrorystage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByIslicense() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'islicense');
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByIsremotepatient() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isremotepatient');
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByLevelmaxpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'levelmaxpain');
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByModelneuro(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modelneuro', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByPrioritylevelpain() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prioritylevelpain');
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByPriorityshorttest(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priorityshorttest',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctBySex(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sex', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctBySympotoms1(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sympotoms1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctBySympotoms2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sympotoms2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctBySympotoms3(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sympotoms3', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByTeststage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teststage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByTimelie() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timelie');
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByTimemove() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timemove');
    });
  }

  QueryBuilder<IPatient, IPatient, QDistinct> distinctByTimeseat() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeseat');
    });
  }
}

extension IPatientQueryProperty
    on QueryBuilder<IPatient, IPatient, QQueryProperty> {
  QueryBuilder<IPatient, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IPatient, String?, QQueryOperations> activetaskProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activetask');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> anamnezProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'anamnez');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> diagnozProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diagnoz');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> fioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fio');
    });
  }

  QueryBuilder<IPatient, String?, QQueryOperations> histrorystageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'histrorystage');
    });
  }

  QueryBuilder<IPatient, bool?, QQueryOperations> islicenseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'islicense');
    });
  }

  QueryBuilder<IPatient, bool, QQueryOperations> isremotepatientProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isremotepatient');
    });
  }

  QueryBuilder<IPatient, int, QQueryOperations> levelmaxpainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'levelmaxpain');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> modelneuroProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modelneuro');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<IPatient, int, QQueryOperations> prioritylevelpainProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prioritylevelpain');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> priorityshorttestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priorityshorttest');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> sexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sex');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> sympotoms1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sympotoms1');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> sympotoms2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sympotoms2');
    });
  }

  QueryBuilder<IPatient, String?, QQueryOperations> sympotoms3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sympotoms3');
    });
  }

  QueryBuilder<IPatient, String, QQueryOperations> teststageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teststage');
    });
  }

  QueryBuilder<IPatient, int, QQueryOperations> timelieProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timelie');
    });
  }

  QueryBuilder<IPatient, int, QQueryOperations> timemoveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timemove');
    });
  }

  QueryBuilder<IPatient, int, QQueryOperations> timeseatProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeseat');
    });
  }
}
