// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_payment_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBillPaymentModelCollection on Isar {
  IsarCollection<BillPaymentModel> get billPaymentModels => this.collection();
}

const BillPaymentModelSchema = CollectionSchema(
  name: r'BillPaymentModel',
  id: 2620898216804376918,
  properties: {
    r'amount': PropertySchema(
      id: 0,
      name: r'amount',
      type: IsarType.double,
    ),
    r'billId': PropertySchema(
      id: 1,
      name: r'billId',
      type: IsarType.long,
    ),
    r'hashCode': PropertySchema(
      id: 2,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'outletId': PropertySchema(
      id: 3,
      name: r'outletId',
      type: IsarType.string,
    ),
    r'payCode': PropertySchema(
      id: 4,
      name: r'payCode',
      type: IsarType.string,
    ),
    r'payId': PropertySchema(
      id: 5,
      name: r'payId',
      type: IsarType.string,
    ),
    r'paymentEntryId': PropertySchema(
      id: 6,
      name: r'paymentEntryId',
      type: IsarType.string,
    ),
    r'returnAmount': PropertySchema(
      id: 7,
      name: r'returnAmount',
      type: IsarType.double,
    ),
    r'userId': PropertySchema(
      id: 8,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _billPaymentModelEstimateSize,
  serialize: _billPaymentModelSerialize,
  deserialize: _billPaymentModelDeserialize,
  deserializeProp: _billPaymentModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'payModeDetails': LinkSchema(
      id: 2659853331389406644,
      name: r'payModeDetails',
      target: r'PayModMasterModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _billPaymentModelGetId,
  getLinks: _billPaymentModelGetLinks,
  attach: _billPaymentModelAttach,
  version: '3.1.0+1',
);

int _billPaymentModelEstimateSize(
  BillPaymentModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.outletId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.payCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.payId;
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
  {
    final value = object.userId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _billPaymentModelSerialize(
  BillPaymentModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.amount);
  writer.writeLong(offsets[1], object.billId);
  writer.writeLong(offsets[2], object.hashCode);
  writer.writeString(offsets[3], object.outletId);
  writer.writeString(offsets[4], object.payCode);
  writer.writeString(offsets[5], object.payId);
  writer.writeString(offsets[6], object.paymentEntryId);
  writer.writeDouble(offsets[7], object.returnAmount);
  writer.writeString(offsets[8], object.userId);
}

BillPaymentModel _billPaymentModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BillPaymentModel(
    amount: reader.readDoubleOrNull(offsets[0]),
    billId: reader.readLongOrNull(offsets[1]),
    id: id,
    outletId: reader.readStringOrNull(offsets[3]),
    payCode: reader.readStringOrNull(offsets[4]),
    payId: reader.readStringOrNull(offsets[5]),
    paymentEntryId: reader.readStringOrNull(offsets[6]),
    returnAmount: reader.readDoubleOrNull(offsets[7]),
    userId: reader.readStringOrNull(offsets[8]),
  );
  return object;
}

P _billPaymentModelDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _billPaymentModelGetId(BillPaymentModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _billPaymentModelGetLinks(BillPaymentModel object) {
  return [object.payModeDetails];
}

void _billPaymentModelAttach(
    IsarCollection<dynamic> col, Id id, BillPaymentModel object) {
  object.id = id;
  object.payModeDetails.attach(
      col, col.isar.collection<PayModMasterModel>(), r'payModeDetails', id);
}

extension BillPaymentModelQueryWhereSort
    on QueryBuilder<BillPaymentModel, BillPaymentModel, QWhere> {
  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BillPaymentModelQueryWhere
    on QueryBuilder<BillPaymentModel, BillPaymentModel, QWhereClause> {
  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterWhereClause>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterWhereClause> idBetween(
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

extension BillPaymentModelQueryFilter
    on QueryBuilder<BillPaymentModel, BillPaymentModel, QFilterCondition> {
  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      amountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'amount',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      amountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'amount',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      amountEqualTo(
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      amountBetween(
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      billIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billId',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      billIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billId',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      billIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billId',
        value: value,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      billIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'billId',
        value: value,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      billIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'billId',
        value: value,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      billIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'billId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      outletIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      outletIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outletId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payCode',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payCode',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'payCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'payCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'payCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payCode',
        value: '',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'payCode',
        value: '',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'payId',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'payId',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'payId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'payId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'payId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'payId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'payId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'payId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'payId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'payId',
        value: '',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'payId',
        value: '',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      paymentEntryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paymentEntryId',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      paymentEntryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paymentEntryId',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
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

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      paymentEntryIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentEntryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      paymentEntryIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentEntryId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      paymentEntryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentEntryId',
        value: '',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      paymentEntryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentEntryId',
        value: '',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      returnAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'returnAmount',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      returnAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'returnAmount',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      returnAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returnAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      returnAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'returnAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      returnAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'returnAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      returnAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'returnAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension BillPaymentModelQueryObject
    on QueryBuilder<BillPaymentModel, BillPaymentModel, QFilterCondition> {}

extension BillPaymentModelQueryLinks
    on QueryBuilder<BillPaymentModel, BillPaymentModel, QFilterCondition> {
  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payModeDetails(FilterQuery<PayModMasterModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'payModeDetails');
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterFilterCondition>
      payModeDetailsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'payModeDetails', 0, true, 0, true);
    });
  }
}

extension BillPaymentModelQuerySortBy
    on QueryBuilder<BillPaymentModel, BillPaymentModel, QSortBy> {
  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByBillIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByPayCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByPayCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy> sortByPayId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payId', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByPayIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payId', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByPaymentEntryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByPaymentEntryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByReturnAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returnAmount', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByReturnAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returnAmount', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension BillPaymentModelQuerySortThenBy
    on QueryBuilder<BillPaymentModel, BillPaymentModel, QSortThenBy> {
  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByBillIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hashCode', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByPayCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByPayCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payCode', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy> thenByPayId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payId', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByPayIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'payId', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByPaymentEntryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByPaymentEntryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentEntryId', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByReturnAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returnAmount', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByReturnAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returnAmount', Sort.desc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension BillPaymentModelQueryWhereDistinct
    on QueryBuilder<BillPaymentModel, BillPaymentModel, QDistinct> {
  QueryBuilder<BillPaymentModel, BillPaymentModel, QDistinct>
      distinctByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amount');
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QDistinct>
      distinctByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billId');
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QDistinct>
      distinctByHashCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hashCode');
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QDistinct>
      distinctByOutletId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QDistinct> distinctByPayCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QDistinct> distinctByPayId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'payId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QDistinct>
      distinctByPaymentEntryId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentEntryId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QDistinct>
      distinctByReturnAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'returnAmount');
    });
  }

  QueryBuilder<BillPaymentModel, BillPaymentModel, QDistinct> distinctByUserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension BillPaymentModelQueryProperty
    on QueryBuilder<BillPaymentModel, BillPaymentModel, QQueryProperty> {
  QueryBuilder<BillPaymentModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BillPaymentModel, double?, QQueryOperations> amountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amount');
    });
  }

  QueryBuilder<BillPaymentModel, int?, QQueryOperations> billIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billId');
    });
  }

  QueryBuilder<BillPaymentModel, int, QQueryOperations> hashCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hashCode');
    });
  }

  QueryBuilder<BillPaymentModel, String?, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<BillPaymentModel, String?, QQueryOperations> payCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payCode');
    });
  }

  QueryBuilder<BillPaymentModel, String?, QQueryOperations> payIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'payId');
    });
  }

  QueryBuilder<BillPaymentModel, String?, QQueryOperations>
      paymentEntryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentEntryId');
    });
  }

  QueryBuilder<BillPaymentModel, double?, QQueryOperations>
      returnAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'returnAmount');
    });
  }

  QueryBuilder<BillPaymentModel, String?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
