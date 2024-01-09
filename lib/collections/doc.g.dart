// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doc.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIDocPatCollection on Isar {
  IsarCollection<IDocPat> get iDocPats => this.collection();
}

const IDocPatSchema = CollectionSchema(
  name: r'IDocPat',
  id: -8689149226878951513,
  properties: {
    r'attempt': PropertySchema(
      id: 0,
      name: r'attempt',
      type: IsarType.long,
    ),
    r'docid': PropertySchema(
      id: 1,
      name: r'docid',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 2,
      name: r'email',
      type: IsarType.string,
    ),
    r'family': PropertySchema(
      id: 3,
      name: r'family',
      type: IsarType.string,
    ),
    r'history': PropertySchema(
      id: 4,
      name: r'history',
      type: IsarType.string,
    ),
    r'hospital': PropertySchema(
      id: 5,
      name: r'hospital',
      type: IsarType.string,
    ),
    r'io': PropertySchema(
      id: 6,
      name: r'io',
      type: IsarType.string,
    ),
    r'password': PropertySchema(
      id: 7,
      name: r'password',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 8,
      name: r'phone',
      type: IsarType.string,
    ),
    r'photo': PropertySchema(
      id: 9,
      name: r'photo',
      type: IsarType.string,
    )
  },
  estimateSize: _iDocPatEstimateSize,
  serialize: _iDocPatSerialize,
  deserialize: _iDocPatDeserialize,
  deserializeProp: _iDocPatDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _iDocPatGetId,
  getLinks: _iDocPatGetLinks,
  attach: _iDocPatAttach,
  version: '3.1.0+1',
);

int _iDocPatEstimateSize(
  IDocPat object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.docid.length * 3;
  bytesCount += 3 + object.email.length * 3;
  bytesCount += 3 + object.family.length * 3;
  bytesCount += 3 + object.history.length * 3;
  bytesCount += 3 + object.hospital.length * 3;
  bytesCount += 3 + object.io.length * 3;
  bytesCount += 3 + object.password.length * 3;
  bytesCount += 3 + object.phone.length * 3;
  bytesCount += 3 + object.photo.length * 3;
  return bytesCount;
}

void _iDocPatSerialize(
  IDocPat object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.attempt);
  writer.writeString(offsets[1], object.docid);
  writer.writeString(offsets[2], object.email);
  writer.writeString(offsets[3], object.family);
  writer.writeString(offsets[4], object.history);
  writer.writeString(offsets[5], object.hospital);
  writer.writeString(offsets[6], object.io);
  writer.writeString(offsets[7], object.password);
  writer.writeString(offsets[8], object.phone);
  writer.writeString(offsets[9], object.photo);
}

IDocPat _iDocPatDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IDocPat();
  object.attempt = reader.readLong(offsets[0]);
  object.docid = reader.readString(offsets[1]);
  object.email = reader.readString(offsets[2]);
  object.family = reader.readString(offsets[3]);
  object.history = reader.readString(offsets[4]);
  object.hospital = reader.readString(offsets[5]);
  object.id = id;
  object.io = reader.readString(offsets[6]);
  object.password = reader.readString(offsets[7]);
  object.phone = reader.readString(offsets[8]);
  object.photo = reader.readString(offsets[9]);
  return object;
}

P _iDocPatDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _iDocPatGetId(IDocPat object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _iDocPatGetLinks(IDocPat object) {
  return [];
}

void _iDocPatAttach(IsarCollection<dynamic> col, Id id, IDocPat object) {
  object.id = id;
}

extension IDocPatQueryWhereSort on QueryBuilder<IDocPat, IDocPat, QWhere> {
  QueryBuilder<IDocPat, IDocPat, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IDocPatQueryWhere on QueryBuilder<IDocPat, IDocPat, QWhereClause> {
  QueryBuilder<IDocPat, IDocPat, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<IDocPat, IDocPat, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterWhereClause> idBetween(
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

extension IDocPatQueryFilter
    on QueryBuilder<IDocPat, IDocPat, QFilterCondition> {
  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> attemptEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attempt',
        value: value,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> attemptGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attempt',
        value: value,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> attemptLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attempt',
        value: value,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> attemptBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attempt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> docidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> docidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'docid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> docidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'docid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> docidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'docid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> docidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'docid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> docidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'docid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> docidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'docid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> docidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'docid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> docidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docid',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> docidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'docid',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> emailEqualTo(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> emailGreaterThan(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> emailLessThan(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> emailBetween(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> emailStartsWith(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> emailEndsWith(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> emailContains(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> emailMatches(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> familyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'family',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> familyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'family',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> familyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'family',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> familyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'family',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> familyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'family',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> familyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'family',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> familyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'family',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> familyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'family',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> familyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'family',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> familyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'family',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> historyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> historyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> historyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> historyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'history',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> historyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> historyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> historyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'history',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> historyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'history',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> historyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'history',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> historyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'history',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> hospitalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hospital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> hospitalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hospital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> hospitalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hospital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> hospitalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hospital',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> hospitalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hospital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> hospitalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hospital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> hospitalContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hospital',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> hospitalMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hospital',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> hospitalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hospital',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> hospitalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hospital',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> ioEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'io',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> ioGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'io',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> ioLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'io',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> ioBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'io',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> ioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'io',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> ioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'io',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> ioContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'io',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> ioMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'io',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> ioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'io',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> ioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'io',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> passwordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> passwordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> passwordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> passwordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'password',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> passwordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> passwordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> passwordContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'password',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> passwordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'password',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'password',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> phoneEqualTo(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> phoneGreaterThan(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> phoneLessThan(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> phoneBetween(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> phoneStartsWith(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> phoneEndsWith(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> phoneContains(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> phoneMatches(
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

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> photoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> photoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> photoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> photoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> photoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> photoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> photoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> photoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> photoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo',
        value: '',
      ));
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterFilterCondition> photoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photo',
        value: '',
      ));
    });
  }
}

extension IDocPatQueryObject
    on QueryBuilder<IDocPat, IDocPat, QFilterCondition> {}

extension IDocPatQueryLinks
    on QueryBuilder<IDocPat, IDocPat, QFilterCondition> {}

extension IDocPatQuerySortBy on QueryBuilder<IDocPat, IDocPat, QSortBy> {
  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByAttempt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempt', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByAttemptDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempt', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByDocid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docid', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByDocidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docid', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByFamily() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'family', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByFamilyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'family', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByHistory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'history', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByHistoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'history', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByHospital() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hospital', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByHospitalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hospital', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByIo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'io', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByIoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'io', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> sortByPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.desc);
    });
  }
}

extension IDocPatQuerySortThenBy
    on QueryBuilder<IDocPat, IDocPat, QSortThenBy> {
  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByAttempt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempt', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByAttemptDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'attempt', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByDocid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docid', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByDocidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docid', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByFamily() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'family', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByFamilyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'family', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByHistory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'history', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByHistoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'history', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByHospital() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hospital', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByHospitalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hospital', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByIo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'io', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByIoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'io', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByPassword() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByPasswordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'password', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.asc);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QAfterSortBy> thenByPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo', Sort.desc);
    });
  }
}

extension IDocPatQueryWhereDistinct
    on QueryBuilder<IDocPat, IDocPat, QDistinct> {
  QueryBuilder<IDocPat, IDocPat, QDistinct> distinctByAttempt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attempt');
    });
  }

  QueryBuilder<IDocPat, IDocPat, QDistinct> distinctByDocid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'docid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QDistinct> distinctByFamily(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'family', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QDistinct> distinctByHistory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'history', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QDistinct> distinctByHospital(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hospital', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QDistinct> distinctByIo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'io', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QDistinct> distinctByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'password', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IDocPat, IDocPat, QDistinct> distinctByPhoto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photo', caseSensitive: caseSensitive);
    });
  }
}

extension IDocPatQueryProperty
    on QueryBuilder<IDocPat, IDocPat, QQueryProperty> {
  QueryBuilder<IDocPat, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IDocPat, int, QQueryOperations> attemptProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attempt');
    });
  }

  QueryBuilder<IDocPat, String, QQueryOperations> docidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'docid');
    });
  }

  QueryBuilder<IDocPat, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<IDocPat, String, QQueryOperations> familyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'family');
    });
  }

  QueryBuilder<IDocPat, String, QQueryOperations> historyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'history');
    });
  }

  QueryBuilder<IDocPat, String, QQueryOperations> hospitalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hospital');
    });
  }

  QueryBuilder<IDocPat, String, QQueryOperations> ioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'io');
    });
  }

  QueryBuilder<IDocPat, String, QQueryOperations> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'password');
    });
  }

  QueryBuilder<IDocPat, String, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<IDocPat, String, QQueryOperations> photoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photo');
    });
  }
}
