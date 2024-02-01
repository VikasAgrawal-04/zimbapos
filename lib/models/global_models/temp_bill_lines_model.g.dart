// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_bill_lines_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTempBillLinesCollection on Isar {
  IsarCollection<TempBillLines> get tempBillLines => this.collection();
}

const TempBillLinesSchema = CollectionSchema(
  name: r'TempBillLines',
  id: 8225675023641099071,
  properties: {
    r'billId': PropertySchema(
      id: 0,
      name: r'billId',
      type: IsarType.string,
    ),
    r'comment': PropertySchema(
      id: 1,
      name: r'comment',
      type: IsarType.string,
    ),
    r'discountAmount': PropertySchema(
      id: 2,
      name: r'discountAmount',
      type: IsarType.double,
    ),
    r'discountPercent': PropertySchema(
      id: 3,
      name: r'discountPercent',
      type: IsarType.double,
    ),
    r'itemGroupId': PropertySchema(
      id: 4,
      name: r'itemGroupId',
      type: IsarType.double,
    ),
    r'itemId': PropertySchema(
      id: 5,
      name: r'itemId',
      type: IsarType.string,
    ),
    r'itemName': PropertySchema(
      id: 6,
      name: r'itemName',
      type: IsarType.string,
    ),
    r'kotId': PropertySchema(
      id: 7,
      name: r'kotId',
      type: IsarType.string,
    ),
    r'lineId': PropertySchema(
      id: 8,
      name: r'lineId',
      type: IsarType.string,
    ),
    r'linePosition': PropertySchema(
      id: 9,
      name: r'linePosition',
      type: IsarType.long,
    ),
    r'lineTotal': PropertySchema(
      id: 10,
      name: r'lineTotal',
      type: IsarType.double,
    ),
    r'mainGroupId': PropertySchema(
      id: 11,
      name: r'mainGroupId',
      type: IsarType.double,
    ),
    r'priceExTax': PropertySchema(
      id: 12,
      name: r'priceExTax',
      type: IsarType.double,
    ),
    r'priceWithTax': PropertySchema(
      id: 13,
      name: r'priceWithTax',
      type: IsarType.double,
    ),
    r'quantity': PropertySchema(
      id: 14,
      name: r'quantity',
      type: IsarType.long,
    ),
    r'taxId': PropertySchema(
      id: 15,
      name: r'taxId',
      type: IsarType.string,
    ),
    r'taxPercent': PropertySchema(
      id: 16,
      name: r'taxPercent',
      type: IsarType.double,
    ),
    r'taxType': PropertySchema(
      id: 17,
      name: r'taxType',
      type: IsarType.string,
    )
  },
  estimateSize: _tempBillLinesEstimateSize,
  serialize: _tempBillLinesSerialize,
  deserialize: _tempBillLinesDeserialize,
  deserializeProp: _tempBillLinesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tempBillLinesGetId,
  getLinks: _tempBillLinesGetLinks,
  attach: _tempBillLinesAttach,
  version: '3.1.0+1',
);

int _tempBillLinesEstimateSize(
  TempBillLines object,
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
    final value = object.comment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kotId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lineId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.taxId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.taxType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _tempBillLinesSerialize(
  TempBillLines object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.billId);
  writer.writeString(offsets[1], object.comment);
  writer.writeDouble(offsets[2], object.discountAmount);
  writer.writeDouble(offsets[3], object.discountPercent);
  writer.writeDouble(offsets[4], object.itemGroupId);
  writer.writeString(offsets[5], object.itemId);
  writer.writeString(offsets[6], object.itemName);
  writer.writeString(offsets[7], object.kotId);
  writer.writeString(offsets[8], object.lineId);
  writer.writeLong(offsets[9], object.linePosition);
  writer.writeDouble(offsets[10], object.lineTotal);
  writer.writeDouble(offsets[11], object.mainGroupId);
  writer.writeDouble(offsets[12], object.priceExTax);
  writer.writeDouble(offsets[13], object.priceWithTax);
  writer.writeLong(offsets[14], object.quantity);
  writer.writeString(offsets[15], object.taxId);
  writer.writeDouble(offsets[16], object.taxPercent);
  writer.writeString(offsets[17], object.taxType);
}

TempBillLines _tempBillLinesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TempBillLines(
    billId: reader.readStringOrNull(offsets[0]),
    comment: reader.readStringOrNull(offsets[1]),
    discountAmount: reader.readDoubleOrNull(offsets[2]),
    discountPercent: reader.readDoubleOrNull(offsets[3]),
    id: id,
    itemGroupId: reader.readDoubleOrNull(offsets[4]),
    itemId: reader.readStringOrNull(offsets[5]),
    itemName: reader.readStringOrNull(offsets[6]),
    kotId: reader.readStringOrNull(offsets[7]),
    lineId: reader.readStringOrNull(offsets[8]),
    linePosition: reader.readLongOrNull(offsets[9]),
    lineTotal: reader.readDoubleOrNull(offsets[10]),
    mainGroupId: reader.readDoubleOrNull(offsets[11]),
    priceExTax: reader.readDoubleOrNull(offsets[12]),
    priceWithTax: reader.readDoubleOrNull(offsets[13]),
    quantity: reader.readLongOrNull(offsets[14]),
    taxId: reader.readStringOrNull(offsets[15]),
    taxPercent: reader.readDoubleOrNull(offsets[16]),
    taxType: reader.readStringOrNull(offsets[17]),
  );
  return object;
}

P _tempBillLinesDeserializeProp<P>(
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
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tempBillLinesGetId(TempBillLines object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tempBillLinesGetLinks(TempBillLines object) {
  return [];
}

void _tempBillLinesAttach(
    IsarCollection<dynamic> col, Id id, TempBillLines object) {
  object.id = id;
}

extension TempBillLinesQueryWhereSort
    on QueryBuilder<TempBillLines, TempBillLines, QWhere> {
  QueryBuilder<TempBillLines, TempBillLines, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TempBillLinesQueryWhere
    on QueryBuilder<TempBillLines, TempBillLines, QWhereClause> {
  QueryBuilder<TempBillLines, TempBillLines, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<TempBillLines, TempBillLines, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterWhereClause> idBetween(
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

extension TempBillLinesQueryFilter
    on QueryBuilder<TempBillLines, TempBillLines, QFilterCondition> {
  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      billIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      billIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
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

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
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

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
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

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
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

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
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

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
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

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      billIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'billId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      billIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'billId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      billIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      billIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'billId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'comment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'discountAmount',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'discountAmount',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountPercentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'discountPercent',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountPercentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'discountPercent',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountPercentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountPercentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountPercentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      discountPercentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountPercent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
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

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemGroupId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemGroupId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemGroupIdEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemGroupId',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemGroupIdGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemGroupId',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemGroupIdLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemGroupId',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemGroupIdBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      itemNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kotId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kotId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kotId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kotId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kotId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      kotIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kotId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lineId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lineId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lineId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lineId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lineId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lineId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lineId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lineId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lineId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lineId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lineId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lineId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      linePositionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'linePosition',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      linePositionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'linePosition',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      linePositionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'linePosition',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      linePositionGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'linePosition',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      linePositionLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'linePosition',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      linePositionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'linePosition',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineTotalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lineTotal',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineTotalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lineTotal',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineTotalEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lineTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineTotalGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lineTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineTotalLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lineTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      lineTotalBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lineTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      mainGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mainGroupId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      mainGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mainGroupId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      mainGroupIdEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainGroupId',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      mainGroupIdGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mainGroupId',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      mainGroupIdLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mainGroupId',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      mainGroupIdBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mainGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceExTaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceExTax',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceExTaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceExTax',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceExTaxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceExTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceExTaxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceExTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceExTaxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceExTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceExTaxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceExTax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceWithTaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceWithTax',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceWithTaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceWithTax',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceWithTaxEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceWithTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceWithTaxGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceWithTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceWithTaxLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceWithTax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      priceWithTaxBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceWithTax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      quantityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      quantityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      quantityEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      quantityGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      quantityLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      quantityBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxId',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taxId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxId',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxPercentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxPercent',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxPercentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxPercent',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxPercentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxPercentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxPercentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxPercentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxPercent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxType',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxType',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taxType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxType',
        value: '',
      ));
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterFilterCondition>
      taxTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxType',
        value: '',
      ));
    });
  }
}

extension TempBillLinesQueryObject
    on QueryBuilder<TempBillLines, TempBillLines, QFilterCondition> {}

extension TempBillLinesQueryLinks
    on QueryBuilder<TempBillLines, TempBillLines, QFilterCondition> {}

extension TempBillLinesQuerySortBy
    on QueryBuilder<TempBillLines, TempBillLines, QSortBy> {
  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByBillIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByDiscountAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByDiscountPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByItemGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByItemGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByItemName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByItemNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByKotId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kotId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByKotIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kotId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByLineId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByLineIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByLinePosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'linePosition', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByLinePositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'linePosition', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByLineTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineTotal', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByLineTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineTotal', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByMainGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByMainGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByPriceExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceExTax', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByPriceExTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceExTax', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByPriceWithTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithTax', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByPriceWithTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithTax', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByTaxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByTaxIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByTaxPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      sortByTaxPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByTaxType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> sortByTaxTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.desc);
    });
  }
}

extension TempBillLinesQuerySortThenBy
    on QueryBuilder<TempBillLines, TempBillLines, QSortThenBy> {
  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByBillIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByDiscountAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByDiscountPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByItemGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByItemGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByItemName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByItemNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByKotId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kotId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByKotIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kotId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByLineId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByLineIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByLinePosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'linePosition', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByLinePositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'linePosition', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByLineTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineTotal', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByLineTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineTotal', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByMainGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByMainGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByPriceExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceExTax', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByPriceExTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceExTax', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByPriceWithTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithTax', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByPriceWithTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithTax', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByTaxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByTaxIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByTaxPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy>
      thenByTaxPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.desc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByTaxType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.asc);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QAfterSortBy> thenByTaxTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.desc);
    });
  }
}

extension TempBillLinesQueryWhereDistinct
    on QueryBuilder<TempBillLines, TempBillLines, QDistinct> {
  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByBillId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByComment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct>
      distinctByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountAmount');
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct>
      distinctByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountPercent');
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct>
      distinctByItemGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemGroupId');
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByItemId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByItemName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByKotId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kotId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByLineId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lineId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct>
      distinctByLinePosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'linePosition');
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByLineTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lineTotal');
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct>
      distinctByMainGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mainGroupId');
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByPriceExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceExTax');
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct>
      distinctByPriceWithTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceWithTax');
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByTaxId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByTaxPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxPercent');
    });
  }

  QueryBuilder<TempBillLines, TempBillLines, QDistinct> distinctByTaxType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxType', caseSensitive: caseSensitive);
    });
  }
}

extension TempBillLinesQueryProperty
    on QueryBuilder<TempBillLines, TempBillLines, QQueryProperty> {
  QueryBuilder<TempBillLines, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TempBillLines, String?, QQueryOperations> billIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billId');
    });
  }

  QueryBuilder<TempBillLines, String?, QQueryOperations> commentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comment');
    });
  }

  QueryBuilder<TempBillLines, double?, QQueryOperations>
      discountAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountAmount');
    });
  }

  QueryBuilder<TempBillLines, double?, QQueryOperations>
      discountPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountPercent');
    });
  }

  QueryBuilder<TempBillLines, double?, QQueryOperations> itemGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemGroupId');
    });
  }

  QueryBuilder<TempBillLines, String?, QQueryOperations> itemIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemId');
    });
  }

  QueryBuilder<TempBillLines, String?, QQueryOperations> itemNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemName');
    });
  }

  QueryBuilder<TempBillLines, String?, QQueryOperations> kotIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kotId');
    });
  }

  QueryBuilder<TempBillLines, String?, QQueryOperations> lineIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lineId');
    });
  }

  QueryBuilder<TempBillLines, int?, QQueryOperations> linePositionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'linePosition');
    });
  }

  QueryBuilder<TempBillLines, double?, QQueryOperations> lineTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lineTotal');
    });
  }

  QueryBuilder<TempBillLines, double?, QQueryOperations> mainGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mainGroupId');
    });
  }

  QueryBuilder<TempBillLines, double?, QQueryOperations> priceExTaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceExTax');
    });
  }

  QueryBuilder<TempBillLines, double?, QQueryOperations>
      priceWithTaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceWithTax');
    });
  }

  QueryBuilder<TempBillLines, int?, QQueryOperations> quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<TempBillLines, String?, QQueryOperations> taxIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxId');
    });
  }

  QueryBuilder<TempBillLines, double?, QQueryOperations> taxPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxPercent');
    });
  }

  QueryBuilder<TempBillLines, String?, QQueryOperations> taxTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxType');
    });
  }
}
