// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_bill_header_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTempBillHeaderModelCollection on Isar {
  IsarCollection<TempBillHeaderModel> get tempBillHeaderModels =>
      this.collection();
}

const TempBillHeaderModelSchema = CollectionSchema(
  name: r'TempBillHeaderModel',
  id: 2464696740772002605,
  properties: {
    r'billId': PropertySchema(
      id: 0,
      name: r'billId',
      type: IsarType.string,
    ),
    r'billStartDateTime': PropertySchema(
      id: 1,
      name: r'billStartDateTime',
      type: IsarType.string,
    ),
    r'customerId': PropertySchema(
      id: 2,
      name: r'customerId',
      type: IsarType.double,
    ),
    r'isBillPrinted': PropertySchema(
      id: 3,
      name: r'isBillPrinted',
      type: IsarType.bool,
    ),
    r'outletId': PropertySchema(
      id: 4,
      name: r'outletId',
      type: IsarType.long,
    ),
    r'pax': PropertySchema(
      id: 5,
      name: r'pax',
      type: IsarType.double,
    ),
    r'recNo': PropertySchema(
      id: 6,
      name: r'recNo',
      type: IsarType.long,
    ),
    r'roundOffAmount': PropertySchema(
      id: 7,
      name: r'roundOffAmount',
      type: IsarType.double,
    ),
    r'serviceChargeAmount': PropertySchema(
      id: 8,
      name: r'serviceChargeAmount',
      type: IsarType.double,
    ),
    r'tableId': PropertySchema(
      id: 9,
      name: r'tableId',
      type: IsarType.string,
    ),
    r'terminalId': PropertySchema(
      id: 10,
      name: r'terminalId',
      type: IsarType.string,
    ),
    r'totalAmount': PropertySchema(
      id: 11,
      name: r'totalAmount',
      type: IsarType.double,
    ),
    r'totalExTax': PropertySchema(
      id: 12,
      name: r'totalExTax',
      type: IsarType.double,
    ),
    r'totalGstAmount': PropertySchema(
      id: 13,
      name: r'totalGstAmount',
      type: IsarType.double,
    ),
    r'totalTaxAmount': PropertySchema(
      id: 14,
      name: r'totalTaxAmount',
      type: IsarType.double,
    ),
    r'totalVatAmount': PropertySchema(
      id: 15,
      name: r'totalVatAmount',
      type: IsarType.double,
    ),
    r'waiterId': PropertySchema(
      id: 16,
      name: r'waiterId',
      type: IsarType.string,
    )
  },
  estimateSize: _tempBillHeaderModelEstimateSize,
  serialize: _tempBillHeaderModelSerialize,
  deserialize: _tempBillHeaderModelDeserialize,
  deserializeProp: _tempBillHeaderModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tempBillHeaderModelGetId,
  getLinks: _tempBillHeaderModelGetLinks,
  attach: _tempBillHeaderModelAttach,
  version: '3.1.0+1',
);

int _tempBillHeaderModelEstimateSize(
  TempBillHeaderModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.billId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.billStartDateTime;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tableId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.terminalId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.waiterId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _tempBillHeaderModelSerialize(
  TempBillHeaderModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.billId);
  writer.writeString(offsets[1], object.billStartDateTime);
  writer.writeDouble(offsets[2], object.customerId);
  writer.writeBool(offsets[3], object.isBillPrinted);
  writer.writeLong(offsets[4], object.outletId);
  writer.writeDouble(offsets[5], object.pax);
  writer.writeLong(offsets[6], object.recNo);
  writer.writeDouble(offsets[7], object.roundOffAmount);
  writer.writeDouble(offsets[8], object.serviceChargeAmount);
  writer.writeString(offsets[9], object.tableId);
  writer.writeString(offsets[10], object.terminalId);
  writer.writeDouble(offsets[11], object.totalAmount);
  writer.writeDouble(offsets[12], object.totalExTax);
  writer.writeDouble(offsets[13], object.totalGstAmount);
  writer.writeDouble(offsets[14], object.totalTaxAmount);
  writer.writeDouble(offsets[15], object.totalVatAmount);
  writer.writeString(offsets[16], object.waiterId);
}

TempBillHeaderModel _tempBillHeaderModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TempBillHeaderModel(
    billId: reader.readStringOrNull(offsets[0]),
    billStartDateTime: reader.readStringOrNull(offsets[1]),
    customerId: reader.readDoubleOrNull(offsets[2]),
    id: id,
    isBillPrinted: reader.readBoolOrNull(offsets[3]),
    outletId: reader.readLongOrNull(offsets[4]),
    pax: reader.readDoubleOrNull(offsets[5]),
    recNo: reader.readLongOrNull(offsets[6]),
    roundOffAmount: reader.readDoubleOrNull(offsets[7]),
    serviceChargeAmount: reader.readDoubleOrNull(offsets[8]),
    tableId: reader.readStringOrNull(offsets[9]),
    terminalId: reader.readStringOrNull(offsets[10]),
    totalAmount: reader.readDoubleOrNull(offsets[11]),
    totalExTax: reader.readDoubleOrNull(offsets[12]),
    totalGstAmount: reader.readDoubleOrNull(offsets[13]),
    totalTaxAmount: reader.readDoubleOrNull(offsets[14]),
    totalVatAmount: reader.readDoubleOrNull(offsets[15]),
    waiterId: reader.readStringOrNull(offsets[16]),
  );
  return object;
}

P _tempBillHeaderModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tempBillHeaderModelGetId(TempBillHeaderModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tempBillHeaderModelGetLinks(
    TempBillHeaderModel object) {
  return [];
}

void _tempBillHeaderModelAttach(
    IsarCollection<dynamic> col, Id id, TempBillHeaderModel object) {
  object.id = id;
}

extension TempBillHeaderModelQueryWhereSort
    on QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QWhere> {
  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TempBillHeaderModelQueryWhere
    on QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QWhereClause> {
  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterWhereClause>
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

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterWhereClause>
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

extension TempBillHeaderModelQueryFilter on QueryBuilder<TempBillHeaderModel,
    TempBillHeaderModel, QFilterCondition> {
  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'billId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'billId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'billId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'billId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'billId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'billId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'billId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'billId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billStartDateTime',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billStartDateTime',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billStartDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'billStartDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'billStartDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'billStartDateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'billStartDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'billStartDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'billStartDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'billStartDateTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billStartDateTime',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      billStartDateTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'billStartDateTime',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      customerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      customerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      customerIdEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      customerIdGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerId',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      customerIdLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerId',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      customerIdBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
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

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
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

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
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

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      isBillPrintedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isBillPrinted',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      isBillPrintedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isBillPrinted',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      isBillPrintedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBillPrinted',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      outletIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      outletIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      outletIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outletId',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      outletIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outletId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      paxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pax',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      paxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pax',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      paxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      paxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      paxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      paxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      recNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recNo',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      recNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recNo',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      recNoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recNo',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      recNoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'recNo',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      recNoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'recNo',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      recNoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'recNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      roundOffAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'roundOffAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      roundOffAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'roundOffAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      roundOffAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'roundOffAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      roundOffAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'roundOffAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      roundOffAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'roundOffAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      roundOffAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'roundOffAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      serviceChargeAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serviceChargeAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      serviceChargeAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serviceChargeAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      serviceChargeAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceChargeAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      serviceChargeAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceChargeAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      serviceChargeAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceChargeAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      serviceChargeAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceChargeAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tableId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tableId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tableId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tableId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tableId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      tableIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tableId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'terminalId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'terminalId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'terminalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'terminalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'terminalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'terminalId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'terminalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'terminalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'terminalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'terminalId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'terminalId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      terminalIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'terminalId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalExTaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalExTax',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalExTaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalExTax',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalExTaxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalExTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalExTaxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalExTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalExTaxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalExTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalExTaxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalExTax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalGstAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalGstAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalGstAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalGstAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalGstAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalGstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalGstAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalGstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalGstAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalGstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalGstAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalGstAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalTaxAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalTaxAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalTaxAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalTaxAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalTaxAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalTaxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalTaxAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalTaxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalTaxAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalTaxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalTaxAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalTaxAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalVatAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalVatAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalVatAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalVatAmount',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalVatAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalVatAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalVatAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalVatAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalVatAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalVatAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      totalVatAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalVatAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'waiterId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'waiterId',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waiterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'waiterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'waiterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'waiterId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'waiterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'waiterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'waiterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'waiterId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waiterId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterFilterCondition>
      waiterIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'waiterId',
        value: '',
      ));
    });
  }
}

extension TempBillHeaderModelQueryObject on QueryBuilder<TempBillHeaderModel,
    TempBillHeaderModel, QFilterCondition> {}

extension TempBillHeaderModelQueryLinks on QueryBuilder<TempBillHeaderModel,
    TempBillHeaderModel, QFilterCondition> {}

extension TempBillHeaderModelQuerySortBy
    on QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QSortBy> {
  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByBillIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByBillStartDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billStartDateTime', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByBillStartDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billStartDateTime', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByIsBillPrinted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBillPrinted', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByIsBillPrintedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBillPrinted', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByPax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pax', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByPaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pax', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByRecNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recNo', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByRecNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recNo', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByRoundOffAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundOffAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByRoundOffAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundOffAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByServiceChargeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceChargeAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByServiceChargeAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceChargeAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTableId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTableIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTerminalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTerminalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTotalExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExTax', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTotalExTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExTax', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTotalGstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGstAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTotalGstAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGstAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTotalTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTotalTaxAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTotalVatAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVatAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByTotalVatAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVatAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByWaiterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waiterId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      sortByWaiterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waiterId', Sort.desc);
    });
  }
}

extension TempBillHeaderModelQuerySortThenBy
    on QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QSortThenBy> {
  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByBillIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByBillStartDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billStartDateTime', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByBillStartDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billStartDateTime', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByIsBillPrinted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBillPrinted', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByIsBillPrintedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBillPrinted', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByPax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pax', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByPaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pax', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByRecNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recNo', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByRecNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recNo', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByRoundOffAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundOffAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByRoundOffAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundOffAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByServiceChargeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceChargeAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByServiceChargeAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceChargeAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTableId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTableIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTerminalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTerminalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTotalExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExTax', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTotalExTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExTax', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTotalGstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGstAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTotalGstAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGstAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTotalTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTotalTaxAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTotalVatAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVatAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByTotalVatAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVatAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByWaiterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waiterId', Sort.asc);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QAfterSortBy>
      thenByWaiterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waiterId', Sort.desc);
    });
  }
}

extension TempBillHeaderModelQueryWhereDistinct
    on QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct> {
  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByBillId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByBillStartDateTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billStartDateTime',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByIsBillPrinted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBillPrinted');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByPax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pax');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByRecNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recNo');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByRoundOffAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roundOffAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByServiceChargeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceChargeAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByTableId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tableId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByTerminalId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'terminalId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByTotalExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalExTax');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByTotalGstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalGstAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByTotalTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalTaxAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByTotalVatAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalVatAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QDistinct>
      distinctByWaiterId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'waiterId', caseSensitive: caseSensitive);
    });
  }
}

extension TempBillHeaderModelQueryProperty
    on QueryBuilder<TempBillHeaderModel, TempBillHeaderModel, QQueryProperty> {
  QueryBuilder<TempBillHeaderModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TempBillHeaderModel, String?, QQueryOperations>
      billIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billId');
    });
  }

  QueryBuilder<TempBillHeaderModel, String?, QQueryOperations>
      billStartDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billStartDateTime');
    });
  }

  QueryBuilder<TempBillHeaderModel, double?, QQueryOperations>
      customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<TempBillHeaderModel, bool?, QQueryOperations>
      isBillPrintedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBillPrinted');
    });
  }

  QueryBuilder<TempBillHeaderModel, int?, QQueryOperations> outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<TempBillHeaderModel, double?, QQueryOperations> paxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pax');
    });
  }

  QueryBuilder<TempBillHeaderModel, int?, QQueryOperations> recNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recNo');
    });
  }

  QueryBuilder<TempBillHeaderModel, double?, QQueryOperations>
      roundOffAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roundOffAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, double?, QQueryOperations>
      serviceChargeAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceChargeAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, String?, QQueryOperations>
      tableIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tableId');
    });
  }

  QueryBuilder<TempBillHeaderModel, String?, QQueryOperations>
      terminalIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'terminalId');
    });
  }

  QueryBuilder<TempBillHeaderModel, double?, QQueryOperations>
      totalAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, double?, QQueryOperations>
      totalExTaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalExTax');
    });
  }

  QueryBuilder<TempBillHeaderModel, double?, QQueryOperations>
      totalGstAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalGstAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, double?, QQueryOperations>
      totalTaxAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalTaxAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, double?, QQueryOperations>
      totalVatAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalVatAmount');
    });
  }

  QueryBuilder<TempBillHeaderModel, String?, QQueryOperations>
      waiterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'waiterId');
    });
  }
}
