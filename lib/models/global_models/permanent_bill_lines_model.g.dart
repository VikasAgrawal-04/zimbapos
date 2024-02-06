// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permanent_bill_lines_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPermanentBillLinesModelCollection on Isar {
  IsarCollection<PermanentBillLinesModel> get permanentBillLinesModels =>
      this.collection();
}

const PermanentBillLinesModelSchema = CollectionSchema(
  name: r'PermanentBillLinesModel',
  id: 7743542068929612497,
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
      type: IsarType.string,
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
      type: IsarType.string,
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
  estimateSize: _permanentBillLinesModelEstimateSize,
  serialize: _permanentBillLinesModelSerialize,
  deserialize: _permanentBillLinesModelDeserialize,
  deserializeProp: _permanentBillLinesModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _permanentBillLinesModelGetId,
  getLinks: _permanentBillLinesModelGetLinks,
  attach: _permanentBillLinesModelAttach,
  version: '3.1.0+1',
);

int _permanentBillLinesModelEstimateSize(
  PermanentBillLinesModel object,
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
    final value = object.itemGroupId;
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
    final value = object.mainGroupId;
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

void _permanentBillLinesModelSerialize(
  PermanentBillLinesModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.billId);
  writer.writeString(offsets[1], object.comment);
  writer.writeDouble(offsets[2], object.discountAmount);
  writer.writeDouble(offsets[3], object.discountPercent);
  writer.writeString(offsets[4], object.itemGroupId);
  writer.writeString(offsets[5], object.itemId);
  writer.writeString(offsets[6], object.itemName);
  writer.writeString(offsets[7], object.kotId);
  writer.writeString(offsets[8], object.lineId);
  writer.writeLong(offsets[9], object.linePosition);
  writer.writeDouble(offsets[10], object.lineTotal);
  writer.writeString(offsets[11], object.mainGroupId);
  writer.writeDouble(offsets[12], object.priceExTax);
  writer.writeDouble(offsets[13], object.priceWithTax);
  writer.writeLong(offsets[14], object.quantity);
  writer.writeString(offsets[15], object.taxId);
  writer.writeDouble(offsets[16], object.taxPercent);
  writer.writeString(offsets[17], object.taxType);
}

PermanentBillLinesModel _permanentBillLinesModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PermanentBillLinesModel(
    billId: reader.readStringOrNull(offsets[0]),
    comment: reader.readStringOrNull(offsets[1]),
    discountAmount: reader.readDoubleOrNull(offsets[2]),
    discountPercent: reader.readDoubleOrNull(offsets[3]),
    id: id,
    itemGroupId: reader.readStringOrNull(offsets[4]),
    itemId: reader.readStringOrNull(offsets[5]),
    itemName: reader.readStringOrNull(offsets[6]),
    kotId: reader.readStringOrNull(offsets[7]),
    lineId: reader.readStringOrNull(offsets[8]),
    linePosition: reader.readLongOrNull(offsets[9]),
    lineTotal: reader.readDoubleOrNull(offsets[10]),
    mainGroupId: reader.readStringOrNull(offsets[11]),
    priceExTax: reader.readDoubleOrNull(offsets[12]),
    priceWithTax: reader.readDoubleOrNull(offsets[13]),
    quantity: reader.readLongOrNull(offsets[14]),
    taxId: reader.readStringOrNull(offsets[15]),
    taxPercent: reader.readDoubleOrNull(offsets[16]),
    taxType: reader.readStringOrNull(offsets[17]),
  );
  return object;
}

P _permanentBillLinesModelDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
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
      return (reader.readStringOrNull(offset)) as P;
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

Id _permanentBillLinesModelGetId(PermanentBillLinesModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _permanentBillLinesModelGetLinks(
    PermanentBillLinesModel object) {
  return [];
}

void _permanentBillLinesModelAttach(
    IsarCollection<dynamic> col, Id id, PermanentBillLinesModel object) {
  object.id = id;
}

extension PermanentBillLinesModelQueryWhereSort
    on QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QWhere> {
  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PermanentBillLinesModelQueryWhere on QueryBuilder<
    PermanentBillLinesModel, PermanentBillLinesModel, QWhereClause> {
  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

extension PermanentBillLinesModelQueryFilter on QueryBuilder<
    PermanentBillLinesModel, PermanentBillLinesModel, QFilterCondition> {
  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> billIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'billId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> billIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'billId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> billIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> billIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'billId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> commentEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> commentGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> commentLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> commentBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> commentStartsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> commentEndsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'discountAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'discountAmount',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountAmountEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountAmountGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountAmountLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountAmountBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountPercentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'discountPercent',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountPercentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'discountPercent',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountPercentEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountPercentGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountPercentLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> discountPercentBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemGroupId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemGroupId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemGroupIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemGroupIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemGroupIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemGroupIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemGroupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemGroupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      itemGroupIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      itemGroupIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemGroupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemGroupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemGroupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemIdEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemIdGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemIdLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemIdBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemIdStartsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemIdEndsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      itemIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      itemIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemNameEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemNameGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemNameLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemNameBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemNameStartsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemNameEndsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      itemNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      itemNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> itemNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> kotIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kotId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> kotIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kotId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> kotIdEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> kotIdGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> kotIdLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> kotIdBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> kotIdStartsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> kotIdEndsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      kotIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kotId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      kotIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kotId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> kotIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kotId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> kotIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kotId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lineId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lineId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineIdEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineIdGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineIdLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineIdBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineIdStartsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineIdEndsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      lineIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lineId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      lineIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lineId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lineId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lineId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> linePositionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'linePosition',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> linePositionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'linePosition',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> linePositionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'linePosition',
        value: value,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> linePositionGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> linePositionLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> linePositionBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineTotalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lineTotal',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineTotalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lineTotal',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineTotalEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineTotalGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineTotalLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> lineTotalBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> mainGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mainGroupId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> mainGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mainGroupId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> mainGroupIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> mainGroupIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> mainGroupIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> mainGroupIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mainGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> mainGroupIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> mainGroupIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      mainGroupIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mainGroupId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      mainGroupIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mainGroupId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> mainGroupIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> mainGroupIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mainGroupId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceExTaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceExTax',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceExTaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceExTax',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceExTaxEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceExTaxGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceExTaxLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceExTaxBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceWithTaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceWithTax',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceWithTaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceWithTax',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceWithTaxEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceWithTaxGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceWithTaxLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> priceWithTaxBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> quantityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> quantityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> quantityEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> quantityGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> quantityLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> quantityBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxId',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxIdEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxIdGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxIdLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxIdBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxIdStartsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxIdEndsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      taxIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      taxIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taxId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxId',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxPercentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxPercent',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxPercentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxPercent',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxPercentEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxPercentGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxPercentLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxPercentBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxType',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxType',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxTypeEqualTo(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxTypeGreaterThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxTypeLessThan(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxTypeBetween(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxTypeStartsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxTypeEndsWith(
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

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      taxTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
          QAfterFilterCondition>
      taxTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taxType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxType',
        value: '',
      ));
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel,
      QAfterFilterCondition> taxTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxType',
        value: '',
      ));
    });
  }
}

extension PermanentBillLinesModelQueryObject on QueryBuilder<
    PermanentBillLinesModel, PermanentBillLinesModel, QFilterCondition> {}

extension PermanentBillLinesModelQueryLinks on QueryBuilder<
    PermanentBillLinesModel, PermanentBillLinesModel, QFilterCondition> {}

extension PermanentBillLinesModelQuerySortBy
    on QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QSortBy> {
  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByBillIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByDiscountAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByDiscountPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByItemGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByItemGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByItemName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByItemNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByKotId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kotId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByKotIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kotId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByLineId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByLineIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByLinePosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'linePosition', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByLinePositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'linePosition', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByLineTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineTotal', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByLineTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineTotal', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByMainGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByMainGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByPriceExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceExTax', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByPriceExTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceExTax', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByPriceWithTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithTax', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByPriceWithTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithTax', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByTaxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByTaxIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByTaxPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByTaxPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByTaxType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      sortByTaxTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.desc);
    });
  }
}

extension PermanentBillLinesModelQuerySortThenBy on QueryBuilder<
    PermanentBillLinesModel, PermanentBillLinesModel, QSortThenBy> {
  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByBillId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByBillIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByDiscountAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByDiscountPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountPercent', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByItemGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByItemGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByItemName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByItemNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByKotId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kotId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByKotIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kotId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByLineId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByLineIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByLinePosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'linePosition', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByLinePositionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'linePosition', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByLineTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineTotal', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByLineTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lineTotal', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByMainGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByMainGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainGroupId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByPriceExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceExTax', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByPriceExTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceExTax', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByPriceWithTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithTax', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByPriceWithTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceWithTax', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByTaxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByTaxIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByTaxPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByTaxPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxPercent', Sort.desc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByTaxType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.asc);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QAfterSortBy>
      thenByTaxTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxType', Sort.desc);
    });
  }
}

extension PermanentBillLinesModelQueryWhereDistinct on QueryBuilder<
    PermanentBillLinesModel, PermanentBillLinesModel, QDistinct> {
  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByBillId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByComment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountAmount');
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByDiscountPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountPercent');
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByItemGroupId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemGroupId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByItemId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByItemName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByKotId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kotId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByLineId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lineId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByLinePosition() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'linePosition');
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByLineTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lineTotal');
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByMainGroupId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mainGroupId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByPriceExTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceExTax');
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByPriceWithTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceWithTax');
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByTaxId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByTaxPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxPercent');
    });
  }

  QueryBuilder<PermanentBillLinesModel, PermanentBillLinesModel, QDistinct>
      distinctByTaxType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxType', caseSensitive: caseSensitive);
    });
  }
}

extension PermanentBillLinesModelQueryProperty on QueryBuilder<
    PermanentBillLinesModel, PermanentBillLinesModel, QQueryProperty> {
  QueryBuilder<PermanentBillLinesModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PermanentBillLinesModel, String?, QQueryOperations>
      billIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billId');
    });
  }

  QueryBuilder<PermanentBillLinesModel, String?, QQueryOperations>
      commentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comment');
    });
  }

  QueryBuilder<PermanentBillLinesModel, double?, QQueryOperations>
      discountAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountAmount');
    });
  }

  QueryBuilder<PermanentBillLinesModel, double?, QQueryOperations>
      discountPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountPercent');
    });
  }

  QueryBuilder<PermanentBillLinesModel, String?, QQueryOperations>
      itemGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemGroupId');
    });
  }

  QueryBuilder<PermanentBillLinesModel, String?, QQueryOperations>
      itemIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemId');
    });
  }

  QueryBuilder<PermanentBillLinesModel, String?, QQueryOperations>
      itemNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemName');
    });
  }

  QueryBuilder<PermanentBillLinesModel, String?, QQueryOperations>
      kotIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kotId');
    });
  }

  QueryBuilder<PermanentBillLinesModel, String?, QQueryOperations>
      lineIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lineId');
    });
  }

  QueryBuilder<PermanentBillLinesModel, int?, QQueryOperations>
      linePositionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'linePosition');
    });
  }

  QueryBuilder<PermanentBillLinesModel, double?, QQueryOperations>
      lineTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lineTotal');
    });
  }

  QueryBuilder<PermanentBillLinesModel, String?, QQueryOperations>
      mainGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mainGroupId');
    });
  }

  QueryBuilder<PermanentBillLinesModel, double?, QQueryOperations>
      priceExTaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceExTax');
    });
  }

  QueryBuilder<PermanentBillLinesModel, double?, QQueryOperations>
      priceWithTaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceWithTax');
    });
  }

  QueryBuilder<PermanentBillLinesModel, int?, QQueryOperations>
      quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<PermanentBillLinesModel, String?, QQueryOperations>
      taxIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxId');
    });
  }

  QueryBuilder<PermanentBillLinesModel, double?, QQueryOperations>
      taxPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxPercent');
    });
  }

  QueryBuilder<PermanentBillLinesModel, String?, QQueryOperations>
      taxTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxType');
    });
  }
}
