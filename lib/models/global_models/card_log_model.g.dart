// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_log_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCardLogModelCollection on Isar {
  IsarCollection<CardLogModel> get cardLogModels => this.collection();
}

const CardLogModelSchema = CollectionSchema(
  name: r'CardLogModel',
  id: 2979209756156732870,
  properties: {
    r'actionType': PropertySchema(
      id: 0,
      name: r'actionType',
      type: IsarType.string,
    ),
    r'amount': PropertySchema(
      id: 1,
      name: r'amount',
      type: IsarType.double,
    ),
    r'cardLogId': PropertySchema(
      id: 2,
      name: r'cardLogId',
      type: IsarType.long,
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
    r'entryDatetime': PropertySchema(
      id: 6,
      name: r'entryDatetime',
      type: IsarType.dateTime,
    ),
    r'loggedUserId': PropertySchema(
      id: 7,
      name: r'loggedUserId',
      type: IsarType.long,
    ),
    r'newBalance': PropertySchema(
      id: 8,
      name: r'newBalance',
      type: IsarType.string,
    ),
    r'outletId': PropertySchema(
      id: 9,
      name: r'outletId',
      type: IsarType.string,
    ),
    r'payMode': PropertySchema(
      id: 10,
      name: r'payMode',
      type: IsarType.string,
    ),
    r'terminalId': PropertySchema(
      id: 11,
      name: r'terminalId',
      type: IsarType.long,
    )
  },
  estimateSize: _cardLogModelEstimateSize,
  serialize: _cardLogModelSerialize,
  deserialize: _cardLogModelDeserialize,
  deserializeProp: _cardLogModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cardLogModelGetId,
  getLinks: _cardLogModelGetLinks,
  attach: _cardLogModelAttach,
  version: '3.1.0+1',
);

int _cardLogModelEstimateSize(
  CardLogModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.actionType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
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
    final value = object.newBalance;
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
  {
    final value = object.payMode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _cardLogModelSerialize(
  CardLogModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.actionType);
  writer.writeDouble(offsets[1], object.amount);
  writer.writeLong(offsets[2], object.cardLogId);
  writer.writeString(offsets[3], object.customerEmail);
  writer.writeLong(offsets[4], object.customerMobile);
  writer.writeString(offsets[5], object.customerName);
  writer.writeDateTime(offsets[6], object.entryDatetime);
  writer.writeLong(offsets[7], object.loggedUserId);
  writer.writeString(offsets[8], object.newBalance);
  writer.writeString(offsets[9], object.outletId);
  writer.writeString(offsets[10], object.payMode);
  writer.writeLong(offsets[11], object.terminalId);
}

CardLogModel _cardLogModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CardLogModel(
    actionType: reader.readStringOrNull(offsets[0]),
    amount: reader.readDoubleOrNull(offsets[1]),
    cardLogId: reader.readLongOrNull(offsets[2]),
    customerEmail: reader.readStringOrNull(offsets[3]),
    customerMobile: reader.readLongOrNull(offsets[4]),
    customerName: reader.readStringOrNull(offsets[5]),
    entryDatetime: reader.readDateTimeOrNull(offsets[6]),
    id: id,
    loggedUserId: reader.readLongOrNull(offsets[7]),
    newBalance: reader.readStringOrNull(offsets[8]),
    outletId: reader.readStringOrNull(offsets[9]),
    payMode: reader.readStringOrNull(offsets[10]),
    terminalId: reader.readLongOrNull(offsets[11]),
  );
  return object;
}

P _cardLogModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cardLogModelGetId(CardLogModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cardLogModelGetLinks(CardLogModel object) {
  return [];
}

void _cardLogModelAttach(
    IsarCollection<dynamic> col, Id id, CardLogModel object) {
  object.id = id;
}

extension CardLogModelQueryWhereSort
    on QueryBuilder<CardLogModel, CardLogModel, QWhere> {
  QueryBuilder<CardLogModel, CardLogModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CardLogModelQueryWhere
    on QueryBuilder<CardLogModel, CardLogModel, QWhereClause> {
  QueryBuilder<CardLogModel, CardLogModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterWhereClause> idBetween(
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

extension CardLogModelQueryFilter
    on QueryBuilder<CardLogModel, CardLogModel, QFilterCondition> {
  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actionType',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actionType',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actionType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'actionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'actionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'actionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'actionType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actionType',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      actionTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'actionType',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      amountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'amount',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      amountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'amount',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition> amountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'amount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      amountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'amount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      amountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'amount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition> amountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'amount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      cardLogIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cardLogId',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      cardLogIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cardLogId',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      cardLogIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardLogId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      cardLogIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardLogId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      cardLogIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardLogId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      cardLogIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardLogId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerEmail',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerEmail',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerMobileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerMobile',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerMobileIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerMobile',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerMobileEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerMobile',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerNameEqualTo(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerNameBetween(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      customerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      entryDatetimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'entryDatetime',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      entryDatetimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'entryDatetime',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      entryDatetimeEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entryDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      entryDatetimeGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entryDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      entryDatetimeLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entryDatetime',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      entryDatetimeBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entryDatetime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      loggedUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loggedUserId',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      loggedUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loggedUserId',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      loggedUserIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loggedUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      loggedUserIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loggedUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      loggedUserIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loggedUserId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      loggedUserIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loggedUserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'newBalance',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'newBalance',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'newBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'newBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'newBalance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'newBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'newBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'newBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'newBalance',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newBalance',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      newBalanceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'newBalance',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdEqualTo(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdGreaterThan(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdLessThan(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdBetween(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdStartsWith(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdEndsWith(
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

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outletId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payMode',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payMode',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'payMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'payMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'payMode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payMode',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      payModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'payMode',
        value: '',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      terminalIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'terminalId',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      terminalIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'terminalId',
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      terminalIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'terminalId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      terminalIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'terminalId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      terminalIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'terminalId',
        value: value,
      ));
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterFilterCondition>
      terminalIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'terminalId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CardLogModelQueryObject
    on QueryBuilder<CardLogModel, CardLogModel, QFilterCondition> {}

extension CardLogModelQueryLinks
    on QueryBuilder<CardLogModel, CardLogModel, QFilterCondition> {}

extension CardLogModelQuerySortBy
    on QueryBuilder<CardLogModel, CardLogModel, QSortBy> {
  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByActionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionType', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      sortByActionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionType', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByCardLogId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardLogId', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByCardLogIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardLogId', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByCustomerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      sortByCustomerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      sortByCustomerMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      sortByCustomerMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      sortByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByEntryDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryDatetime', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      sortByEntryDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryDatetime', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByLoggedUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedUserId', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      sortByLoggedUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedUserId', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByNewBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newBalance', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      sortByNewBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newBalance', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByPayMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payMode', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByPayModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payMode', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> sortByTerminalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      sortByTerminalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.desc);
    });
  }
}

extension CardLogModelQuerySortThenBy
    on QueryBuilder<CardLogModel, CardLogModel, QSortThenBy> {
  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByActionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionType', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      thenByActionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionType', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByCardLogId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardLogId', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByCardLogIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardLogId', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByCustomerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      thenByCustomerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      thenByCustomerMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      thenByCustomerMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      thenByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByEntryDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryDatetime', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      thenByEntryDatetimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entryDatetime', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByLoggedUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedUserId', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      thenByLoggedUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedUserId', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByNewBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newBalance', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      thenByNewBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newBalance', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByPayMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payMode', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByPayModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payMode', Sort.desc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy> thenByTerminalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.asc);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QAfterSortBy>
      thenByTerminalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.desc);
    });
  }
}

extension CardLogModelQueryWhereDistinct
    on QueryBuilder<CardLogModel, CardLogModel, QDistinct> {
  QueryBuilder<CardLogModel, CardLogModel, QDistinct> distinctByActionType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actionType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct> distinctByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amount');
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct> distinctByCardLogId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardLogId');
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct> distinctByCustomerEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerEmail',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct>
      distinctByCustomerMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerMobile');
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct> distinctByCustomerName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct>
      distinctByEntryDatetime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entryDatetime');
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct> distinctByLoggedUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loggedUserId');
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct> distinctByNewBalance(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'newBalance', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct> distinctByOutletId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct> distinctByPayMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payMode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardLogModel, CardLogModel, QDistinct> distinctByTerminalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'terminalId');
    });
  }
}

extension CardLogModelQueryProperty
    on QueryBuilder<CardLogModel, CardLogModel, QQueryProperty> {
  QueryBuilder<CardLogModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CardLogModel, String?, QQueryOperations> actionTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actionType');
    });
  }

  QueryBuilder<CardLogModel, double?, QQueryOperations> amountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amount');
    });
  }

  QueryBuilder<CardLogModel, int?, QQueryOperations> cardLogIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardLogId');
    });
  }

  QueryBuilder<CardLogModel, String?, QQueryOperations>
      customerEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerEmail');
    });
  }

  QueryBuilder<CardLogModel, int?, QQueryOperations> customerMobileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerMobile');
    });
  }

  QueryBuilder<CardLogModel, String?, QQueryOperations> customerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerName');
    });
  }

  QueryBuilder<CardLogModel, DateTime?, QQueryOperations>
      entryDatetimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entryDatetime');
    });
  }

  QueryBuilder<CardLogModel, int?, QQueryOperations> loggedUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loggedUserId');
    });
  }

  QueryBuilder<CardLogModel, String?, QQueryOperations> newBalanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'newBalance');
    });
  }

  QueryBuilder<CardLogModel, String?, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<CardLogModel, String?, QQueryOperations> payModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payMode');
    });
  }

  QueryBuilder<CardLogModel, int?, QQueryOperations> terminalIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'terminalId');
    });
  }
}
