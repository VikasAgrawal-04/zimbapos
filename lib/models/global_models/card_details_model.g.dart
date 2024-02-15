// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_details_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetClassExtraDetailsCollection on Isar {
  IsarCollection<ClassExtraDetails> get classExtraDetails => this.collection();
}

const ClassExtraDetailsSchema = CollectionSchema(
  name: r'ClassExtraDetails',
  id: -8410798491416346643,
  properties: {
    r'cardType': PropertySchema(
      id: 0,
      name: r'cardType',
      type: IsarType.string,
    ),
    r'hashCode': PropertySchema(
      id: 1,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'issuer': PropertySchema(
      id: 2,
      name: r'issuer',
      type: IsarType.string,
    ),
    r'lastDigits': PropertySchema(
      id: 3,
      name: r'lastDigits',
      type: IsarType.string,
    ),
    r'paymentEntryId': PropertySchema(
      id: 4,
      name: r'paymentEntryId',
      type: IsarType.string,
    )
  },
  estimateSize: _classExtraDetailsEstimateSize,
  serialize: _classExtraDetailsSerialize,
  deserialize: _classExtraDetailsDeserialize,
  deserializeProp: _classExtraDetailsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _classExtraDetailsGetId,
  getLinks: _classExtraDetailsGetLinks,
  attach: _classExtraDetailsAttach,
  version: '3.1.0+1',
);

int _classExtraDetailsEstimateSize(
  ClassExtraDetails object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cardType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.issuer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastDigits;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.paymentEntryId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _classExtraDetailsSerialize(
  ClassExtraDetails object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cardType);
  writer.writeLong(offsets[1], object.hashCode);
  writer.writeString(offsets[2], object.issuer);
  writer.writeString(offsets[3], object.lastDigits);
  writer.writeString(offsets[4], object.paymentEntryId);
}

ClassExtraDetails _classExtraDetailsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ClassExtraDetails(
    cardType: reader.readStringOrNull(offsets[0]),
    id: id,
    issuer: reader.readStringOrNull(offsets[2]),
    lastDigits: reader.readStringOrNull(offsets[3]),
    paymentEntryId: reader.readStringOrNull(offsets[4]),
  );
  return object;
}

P _classExtraDetailsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _classExtraDetailsGetId(ClassExtraDetails object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _classExtraDetailsGetLinks(
    ClassExtraDetails object) {
  return [];
}

void _classExtraDetailsAttach(
    IsarCollection<dynamic> col, Id id, ClassExtraDetails object) {
  object.id = id;
}

extension ClassExtraDetailsQueryWhereSort
    on QueryBuilder<ClassExtraDetails, ClassExtraDetails, QWhere> {
  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ClassExtraDetailsQueryWhere
    on QueryBuilder<ClassExtraDetails, ClassExtraDetails, QWhereClause> {
  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterWhereClause>
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

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterWhereClause>
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

extension ClassExtraDetailsQueryFilter
    on QueryBuilder<ClassExtraDetails, ClassExtraDetails, QFilterCondition> {
  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cardType',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cardType',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cardType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cardType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cardType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cardType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardType',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      cardTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cardType',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'issuer',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'issuer',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'issuer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'issuer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'issuer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'issuer',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      issuerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'issuer',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastDigits',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastDigits',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastDigits',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastDigits',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastDigits',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastDigits',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastDigits',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastDigits',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastDigits',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastDigits',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastDigits',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      lastDigitsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastDigits',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paymentEntryId',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paymentEntryId',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentEntryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentEntryId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentEntryId',
        value: '',
      ));
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterFilterCondition>
      paymentEntryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentEntryId',
        value: '',
      ));
    });
  }
}

extension ClassExtraDetailsQueryObject
    on QueryBuilder<ClassExtraDetails, ClassExtraDetails, QFilterCondition> {}

extension ClassExtraDetailsQueryLinks
    on QueryBuilder<ClassExtraDetails, ClassExtraDetails, QFilterCondition> {}

extension ClassExtraDetailsQuerySortBy
    on QueryBuilder<ClassExtraDetails, ClassExtraDetails, QSortBy> {
  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      sortByCardType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardType', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      sortByCardTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardType', Sort.desc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      sortByIssuer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuer', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      sortByIssuerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuer', Sort.desc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      sortByLastDigits() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDigits', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      sortByLastDigitsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDigits', Sort.desc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      sortByPaymentEntryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      sortByPaymentEntryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.desc);
    });
  }
}

extension ClassExtraDetailsQuerySortThenBy
    on QueryBuilder<ClassExtraDetails, ClassExtraDetails, QSortThenBy> {
  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByCardType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardType', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByCardTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardType', Sort.desc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByIssuer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuer', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByIssuerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'issuer', Sort.desc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByLastDigits() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDigits', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByLastDigitsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDigits', Sort.desc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByPaymentEntryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.asc);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QAfterSortBy>
      thenByPaymentEntryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.desc);
    });
  }
}

extension ClassExtraDetailsQueryWhereDistinct
    on QueryBuilder<ClassExtraDetails, ClassExtraDetails, QDistinct> {
  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QDistinct>
      distinctByCardType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QDistinct>
      distinctByIssuer({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'issuer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QDistinct>
      distinctByLastDigits({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastDigits', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ClassExtraDetails, ClassExtraDetails, QDistinct>
      distinctByPaymentEntryId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentEntryId',
          caseSensitive: caseSensitive);
    });
  }
}

extension ClassExtraDetailsQueryProperty
    on QueryBuilder<ClassExtraDetails, ClassExtraDetails, QQueryProperty> {
  QueryBuilder<ClassExtraDetails, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ClassExtraDetails, String?, QQueryOperations>
      cardTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardType');
    });
  }

  QueryBuilder<ClassExtraDetails, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<ClassExtraDetails, String?, QQueryOperations> issuerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'issuer');
    });
  }

  QueryBuilder<ClassExtraDetails, String?, QQueryOperations>
      lastDigitsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastDigits');
    });
  }

  QueryBuilder<ClassExtraDetails, String?, QQueryOperations>
      paymentEntryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentEntryId');
    });
  }
}
