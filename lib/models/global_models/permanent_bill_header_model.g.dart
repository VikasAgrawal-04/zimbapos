// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permanent_bill_header_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPermanentBillHeaderModelCollection on Isar {
  IsarCollection<PermanentBillHeaderModel> get permanentBillHeaderModels =>
      this.collection();
}

const PermanentBillHeaderModelSchema = CollectionSchema(
  name: r'PermanentBillHeaderModel',
  id: 9188137719594365589,
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
      type: IsarType.string,
    ),
    r'isBillPrinted': PropertySchema(
      id: 3,
      name: r'isBillPrinted',
      type: IsarType.bool,
    ),
    r'outletId': PropertySchema(
      id: 4,
      name: r'outletId',
      type: IsarType.string,
    ),
    r'pax': PropertySchema(
      id: 5,
      name: r'pax',
      type: IsarType.long,
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
  estimateSize: _permanentBillHeaderModelEstimateSize,
  serialize: _permanentBillHeaderModelSerialize,
  deserialize: _permanentBillHeaderModelDeserialize,
  deserializeProp: _permanentBillHeaderModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _permanentBillHeaderModelGetId,
  getLinks: _permanentBillHeaderModelGetLinks,
  attach: _permanentBillHeaderModelAttach,
  version: '3.1.0+1',
);

int _permanentBillHeaderModelEstimateSize(
  PermanentBillHeaderModel object,
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
    final value = object.customerId;
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

void _permanentBillHeaderModelSerialize(
  PermanentBillHeaderModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.billId);
  writer.writeString(offsets[1], object.billStartDateTime);
  writer.writeString(offsets[2], object.customerId);
  writer.writeBool(offsets[3], object.isBillPrinted);
  writer.writeString(offsets[4], object.outletId);
  writer.writeLong(offsets[5], object.pax);
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

PermanentBillHeaderModel _permanentBillHeaderModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PermanentBillHeaderModel(
    billId: reader.readStringOrNull(offsets[0]),
    billStartDateTime: reader.readStringOrNull(offsets[1]),
    customerId: reader.readStringOrNull(offsets[2]),
    id: id,
    isBillPrinted: reader.readBoolOrNull(offsets[3]),
    outletId: reader.readStringOrNull(offsets[4]),
    pax: reader.readLongOrNull(offsets[5]),
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

P _permanentBillHeaderModelDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
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

Id _permanentBillHeaderModelGetId(PermanentBillHeaderModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _permanentBillHeaderModelGetLinks(
    PermanentBillHeaderModel object) {
  return [];
}

void _permanentBillHeaderModelAttach(
    IsarCollection<dynamic> col, Id id, PermanentBillHeaderModel object) {
  object.id = id;
}

extension PermanentBillHeaderModelQueryWhereSort on QueryBuilder<
    PermanentBillHeaderModel, PermanentBillHeaderModel, QWhere> {
  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PermanentBillHeaderModelQueryWhere on QueryBuilder<
    PermanentBillHeaderModel, PermanentBillHeaderModel, QWhereClause> {
  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterWhereClause> idBetween(
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

extension PermanentBillHeaderModelQueryFilter on QueryBuilder<
    PermanentBillHeaderModel, PermanentBillHeaderModel, QFilterCondition> {
  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billIdEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billIdGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billIdLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billIdBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billIdStartsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billIdEndsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      billIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'billId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      billIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'billId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'billId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billStartDateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billStartDateTime',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billStartDateTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billStartDateTime',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billStartDateTimeEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billStartDateTimeGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billStartDateTimeLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billStartDateTimeBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billStartDateTimeStartsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billStartDateTimeEndsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      billStartDateTimeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'billStartDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      billStartDateTimeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'billStartDateTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billStartDateTimeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billStartDateTime',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> billStartDateTimeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'billStartDateTime',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> customerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> customerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> customerIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> customerIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> customerIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> customerIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> customerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> customerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      customerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      customerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> customerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> customerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> isBillPrintedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isBillPrinted',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> isBillPrintedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isBillPrinted',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> isBillPrintedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBillPrinted',
        value: value,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> outletIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> outletIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'outletId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> outletIdEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> outletIdGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> outletIdLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> outletIdBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> outletIdStartsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> outletIdEndsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      outletIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'outletId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      outletIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'outletId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> outletIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> outletIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'outletId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> paxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pax',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> paxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pax',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> paxEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pax',
        value: value,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> paxGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pax',
        value: value,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> paxLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pax',
        value: value,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> paxBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> recNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'recNo',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> recNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'recNo',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> recNoEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'recNo',
        value: value,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> recNoGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> recNoLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> recNoBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> roundOffAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'roundOffAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> roundOffAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'roundOffAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> roundOffAmountEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> roundOffAmountGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> roundOffAmountLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> roundOffAmountBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> serviceChargeAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serviceChargeAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> serviceChargeAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serviceChargeAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> serviceChargeAmountEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> serviceChargeAmountGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> serviceChargeAmountLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> serviceChargeAmountBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> tableIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tableId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> tableIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tableId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> tableIdEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> tableIdGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> tableIdLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> tableIdBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> tableIdStartsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> tableIdEndsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      tableIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tableId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      tableIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tableId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> tableIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tableId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> tableIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tableId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> terminalIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'terminalId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> terminalIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'terminalId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> terminalIdEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> terminalIdGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> terminalIdLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> terminalIdBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> terminalIdStartsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> terminalIdEndsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      terminalIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'terminalId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      terminalIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'terminalId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> terminalIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'terminalId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> terminalIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'terminalId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalAmountEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalAmountGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalAmountLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalAmountBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalExTaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalExTax',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalExTaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalExTax',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalExTaxEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalExTaxGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalExTaxLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalExTaxBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalGstAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalGstAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalGstAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalGstAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalGstAmountEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalGstAmountGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalGstAmountLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalGstAmountBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalTaxAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalTaxAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalTaxAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalTaxAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalTaxAmountEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalTaxAmountGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalTaxAmountLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalTaxAmountBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalVatAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalVatAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalVatAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalVatAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalVatAmountEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalVatAmountGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalVatAmountLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> totalVatAmountBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> waiterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'waiterId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> waiterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'waiterId',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> waiterIdEqualTo(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> waiterIdGreaterThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> waiterIdLessThan(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> waiterIdBetween(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> waiterIdStartsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> waiterIdEndsWith(
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

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      waiterIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'waiterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
          QAfterFilterCondition>
      waiterIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'waiterId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> waiterIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waiterId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel,
      QAfterFilterCondition> waiterIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'waiterId',
        value: '',
      ));
    });
  }
}

extension PermanentBillHeaderModelQueryObject on QueryBuilder<
    PermanentBillHeaderModel, PermanentBillHeaderModel, QFilterCondition> {}

extension PermanentBillHeaderModelQueryLinks on QueryBuilder<
    PermanentBillHeaderModel, PermanentBillHeaderModel, QFilterCondition> {}

extension PermanentBillHeaderModelQuerySortBy on QueryBuilder<
    PermanentBillHeaderModel, PermanentBillHeaderModel, QSortBy> {
  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByBillIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByBillStartDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billStartDateTime', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByBillStartDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billStartDateTime', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByIsBillPrinted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBillPrinted', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByIsBillPrintedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBillPrinted', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByPax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pax', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByPaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pax', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByRecNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recNo', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByRecNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recNo', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByRoundOffAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundOffAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByRoundOffAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundOffAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByServiceChargeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceChargeAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByServiceChargeAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceChargeAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTableId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTableIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTerminalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTerminalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTotalExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExTax', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTotalExTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExTax', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTotalGstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGstAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTotalGstAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGstAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTotalTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTotalTaxAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTotalVatAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVatAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByTotalVatAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVatAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByWaiterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waiterId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      sortByWaiterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waiterId', Sort.desc);
    });
  }
}

extension PermanentBillHeaderModelQuerySortThenBy on QueryBuilder<
    PermanentBillHeaderModel, PermanentBillHeaderModel, QSortThenBy> {
  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByBillIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByBillStartDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billStartDateTime', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByBillStartDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billStartDateTime', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByIsBillPrinted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBillPrinted', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByIsBillPrintedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBillPrinted', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByOutletId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByOutletIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outletId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByPax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pax', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByPaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pax', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByRecNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recNo', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByRecNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'recNo', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByRoundOffAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundOffAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByRoundOffAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'roundOffAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByServiceChargeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceChargeAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByServiceChargeAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceChargeAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTableId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTableIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tableId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTerminalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTerminalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'terminalId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTotalExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExTax', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTotalExTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalExTax', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTotalGstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGstAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTotalGstAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGstAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTotalTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTotalTaxAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTaxAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTotalVatAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVatAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByTotalVatAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalVatAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByWaiterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waiterId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QAfterSortBy>
      thenByWaiterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waiterId', Sort.desc);
    });
  }
}

extension PermanentBillHeaderModelQueryWhereDistinct on QueryBuilder<
    PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct> {
  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByBillId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByBillStartDateTime({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billStartDateTime',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByCustomerId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByIsBillPrinted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBillPrinted');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByOutletId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outletId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByPax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pax');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByRecNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'recNo');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByRoundOffAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'roundOffAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByServiceChargeAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceChargeAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByTableId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tableId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByTerminalId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'terminalId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByTotalExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalExTax');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByTotalGstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalGstAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByTotalTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalTaxAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByTotalVatAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalVatAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, PermanentBillHeaderModel, QDistinct>
      distinctByWaiterId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'waiterId', caseSensitive: caseSensitive);
    });
  }
}

extension PermanentBillHeaderModelQueryProperty on QueryBuilder<
    PermanentBillHeaderModel, PermanentBillHeaderModel, QQueryProperty> {
  QueryBuilder<PermanentBillHeaderModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, String?, QQueryOperations>
      billIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billId');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, String?, QQueryOperations>
      billStartDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billStartDateTime');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, String?, QQueryOperations>
      customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, bool?, QQueryOperations>
      isBillPrintedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBillPrinted');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, String?, QQueryOperations>
      outletIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outletId');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, int?, QQueryOperations> paxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pax');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, int?, QQueryOperations>
      recNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'recNo');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, double?, QQueryOperations>
      roundOffAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'roundOffAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, double?, QQueryOperations>
      serviceChargeAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceChargeAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, String?, QQueryOperations>
      tableIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tableId');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, String?, QQueryOperations>
      terminalIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'terminalId');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, double?, QQueryOperations>
      totalAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, double?, QQueryOperations>
      totalExTaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalExTax');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, double?, QQueryOperations>
      totalGstAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalGstAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, double?, QQueryOperations>
      totalTaxAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalTaxAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, double?, QQueryOperations>
      totalVatAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalVatAmount');
    });
  }

  QueryBuilder<PermanentBillHeaderModel, String?, QQueryOperations>
      waiterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'waiterId');
    });
  }
}
