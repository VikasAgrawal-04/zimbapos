// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCardModelCollection on Isar {
  IsarCollection<CardModel> get cardModels => this.collection();
}

const CardModelSchema = CollectionSchema(
  name: r'CardModel',
  id: -4511307714291515206,
  properties: {
    r'balance': PropertySchema(
      id: 0,
      name: r'balance',
      type: IsarType.double,
    ),
    r'cardId': PropertySchema(
      id: 1,
      name: r'cardId',
      type: IsarType.long,
    ),
    r'createDatetime': PropertySchema(
      id: 2,
      name: r'createDatetime',
      type: IsarType.dateTime,
    ),
    r'customerEmail': PropertySchema(
      id: 3,
      name: r'customerEmail',
      type: IsarType.string,
    ),
    r'customerMobile': PropertySchema(
      id: 4,
      name: r'customerMobile',
      type: IsarType.long,
    ),
    r'customerName': PropertySchema(
      id: 5,
      name: r'customerName',
      type: IsarType.string,
    ),
    r'isActive': PropertySchema(
      id: 6,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 7,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'lastLoadedDatetime': PropertySchema(
      id: 8,
      name: r'lastLoadedDatetime',
      type: IsarType.dateTime,
    ),
    r'lastUsedDatetime': PropertySchema(
      id: 9,
      name: r'lastUsedDatetime',
      type: IsarType.dateTime,
    ),
    r'outletId': PropertySchema(
      id: 10,
      name: r'outletId',
      type: IsarType.string,
    )
  },
  estimateSize: _cardModelEstimateSize,
  serialize: _cardModelSerialize,
  deserialize: _cardModelDeserialize,
  deserializeProp: _cardModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cardModelGetId,
  getLinks: _cardModelGetLinks,
  attach: _cardModelAttach,
  version: '3.1.0+1',
);

int _cardModelEstimateSize(
  CardModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.customerEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.outletId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _cardModelSerialize(
  CardModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.balance);
  writer.writeLong(offsets[1], object.cardId);
  writer.writeDateTime(offsets[2], object.createDatetime);
  writer.writeString(offsets[3], object.customerEmail);
  writer.writeLong(offsets[4], object.customerMobile);
  writer.writeString(offsets[5], object.customerName);
  writer.writeBool(offsets[6], object.isActive);
  writer.writeBool(offsets[7], object.isDeleted);
  writer.writeDateTime(offsets[8], object.lastLoadedDatetime);
  writer.writeDateTime(offsets[9], object.lastUsedDatetime);
  writer.writeString(offsets[10], object.outletId);
}

CardModel _cardModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CardModel(
    balance: reader.readDoubleOrNull(offsets[0]),
    cardId: reader.readLongOrNull(offsets[1]),
    createDatetime: reader.readDateTimeOrNull(offsets[2]),
    customerEmail: reader.readStringOrNull(offsets[3]),
    customerMobile: reader.readLongOrNull(offsets[4]),
    customerName: reader.readStringOrNull(offsets[5]),
    id: id,
    isActive: reader.readBoolOrNull(offsets[6]),
    isDeleted: reader.readBoolOrNull(offsets[7]),
    lastLoadedDatetime: reader.readDateTimeOrNull(offsets[8]),
    lastUsedDatetime: reader.readDateTimeOrNull(offsets[9]),
    outletId: reader.readStringOrNull(offsets[10]),
  );
  return object;
}

P _cardModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cardModelGetId(CardModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cardModelGetLinks(CardModel object) {
  return [];
}

void _cardModelAttach(IsarCollection<dynamic> col, Id id, CardModel object) {
  object.id = id;
}

extension CardModelQueryWhereSort
    on QueryBuilder<CardModel, CardModel, QWhere> {
  QueryBuilder<CardModel, CardModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CardModelQueryWhere
    on QueryBuilder<CardModel, CardModel, QWhereClause> {
  QueryBuilder<CardModel, CardModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CardModel, CardModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterWhereClause> idBetween(
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

extension CardModelQueryFilter
    on QueryBuilder<CardModel, CardModel, QFilterCondition> {
  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> balanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'balance',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> balanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'balance',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> balanceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'balance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> balanceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'balance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> balanceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'balance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> balanceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'balance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> cardIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cardId',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> cardIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cardId',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> cardIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> cardIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> cardIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> cardIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      createDatetimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createDatetime',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      createDatetimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createDatetime',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      createDatetimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      createDatetimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      createDatetimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      createDatetimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createDatetime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerEmail',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerEmail',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerMobileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerMobile',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerMobileIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerMobile',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerMobileEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerMobile',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerMobileGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerMobile',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerMobileLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerMobile',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerMobileBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerMobile',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> customerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> customerNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> customerNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      customerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> isActiveEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> isDeletedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastLoadedDatetimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastLoadedDatetime',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastLoadedDatetimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastLoadedDatetime',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastLoadedDatetimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastLoadedDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastLoadedDatetimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastLoadedDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastLoadedDatetimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastLoadedDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastLoadedDatetimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastLoadedDatetime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastUsedDatetimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastUsedDatetime',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastUsedDatetimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastUsedDatetime',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastUsedDatetimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastUsedDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastUsedDatetimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastUsedDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastUsedDatetimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastUsedDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      lastUsedDatetimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastUsedDatetime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> outletIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> outletIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> outletIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> outletIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outletId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> outletIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> outletIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> outletIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> outletIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outletId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition> outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterFilterCondition>
      outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }
}

extension CardModelQueryObject
    on QueryBuilder<CardModel, CardModel, QFilterCondition> {}

extension CardModelQueryLinks
    on QueryBuilder<CardModel, CardModel, QFilterCondition> {}

extension CardModelQuerySortBy on QueryBuilder<CardModel, CardModel, QSortBy> {
  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balance', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balance', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByCardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByCardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByCreateDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDatetime', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByCreateDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDatetime', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByCustomerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByCustomerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByCustomerMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByCustomerMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByLastLoadedDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastLoadedDatetime', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy>
      sortByLastLoadedDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastLoadedDatetime', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByLastUsedDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsedDatetime', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy>
      sortByLastUsedDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsedDatetime', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }
}

extension CardModelQuerySortThenBy
    on QueryBuilder<CardModel, CardModel, QSortThenBy> {
  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balance', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balance', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByCardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByCardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardId', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByCreateDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDatetime', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByCreateDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDatetime', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByCustomerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByCustomerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByCustomerMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByCustomerMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByLastLoadedDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastLoadedDatetime', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy>
      thenByLastLoadedDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastLoadedDatetime', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByLastUsedDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsedDatetime', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy>
      thenByLastUsedDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastUsedDatetime', Sort.desc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<CardModel, CardModel, QAfterSortBy> thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }
}

extension CardModelQueryWhereDistinct
    on QueryBuilder<CardModel, CardModel, QDistinct> {
  QueryBuilder<CardModel, CardModel, QDistinct> distinctByBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'balance');
    });
  }

  QueryBuilder<CardModel, CardModel, QDistinct> distinctByCardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardId');
    });
  }

  QueryBuilder<CardModel, CardModel, QDistinct> distinctByCreateDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createDatetime');
    });
  }

  QueryBuilder<CardModel, CardModel, QDistinct> distinctByCustomerEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerEmail',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardModel, CardModel, QDistinct> distinctByCustomerMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerMobile');
    });
  }

  QueryBuilder<CardModel, CardModel, QDistinct> distinctByCustomerName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardModel, CardModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<CardModel, CardModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<CardModel, CardModel, QDistinct> distinctByLastLoadedDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastLoadedDatetime');
    });
  }

  QueryBuilder<CardModel, CardModel, QDistinct> distinctByLastUsedDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastUsedDatetime');
    });
  }

  QueryBuilder<CardModel, CardModel, QDistinct> distinctByOutletId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }
}

extension CardModelQueryProperty
    on QueryBuilder<CardModel, CardModel, QQueryProperty> {
  QueryBuilder<CardModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CardModel, double?, QQueryOperations> balanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'balance');
    });
  }

  QueryBuilder<CardModel, int?, QQueryOperations> cardIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardId');
    });
  }

  QueryBuilder<CardModel, DateTime?, QQueryOperations>
      createDatetimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createDatetime');
    });
  }

  QueryBuilder<CardModel, String?, QQueryOperations> customerEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerEmail');
    });
  }

  QueryBuilder<CardModel, int?, QQueryOperations> customerMobileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerMobile');
    });
  }

  QueryBuilder<CardModel, String?, QQueryOperations> customerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerName');
    });
  }

  QueryBuilder<CardModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<CardModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<CardModel, DateTime?, QQueryOperations>
      lastLoadedDatetimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastLoadedDatetime');
    });
  }

  QueryBuilder<CardModel, DateTime?, QQueryOperations>
      lastUsedDatetimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastUsedDatetime');
    });
  }

  QueryBuilder<CardModel, String?, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }
}
