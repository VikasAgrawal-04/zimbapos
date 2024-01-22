// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetItemsModelCollection on Isar {
  IsarCollection<ItemsModel> get itemsModels => this.collection();
}

const ItemsModelSchema = CollectionSchema(
  name: r'ItemsModel',
  id: 3984842588046308362,
  properties: {
    r'barcode': PropertySchema(
      id: 0,
      name: r'barcode',
      type: IsarType.string,
    ),
    r'foodType': PropertySchema(
      id: 1,
      name: r'foodType',
      type: IsarType.string,
    ),
    r'hsnCode': PropertySchema(
      id: 2,
      name: r'hsnCode',
      type: IsarType.string,
    ),
    r'imgLink': PropertySchema(
      id: 3,
      name: r'imgLink',
      type: IsarType.string,
    ),
    r'isActive': PropertySchema(
      id: 4,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'isAlcohol': PropertySchema(
      id: 5,
      name: r'isAlcohol',
      type: IsarType.bool,
    ),
    r'isDeleted': PropertySchema(
      id: 6,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'isOpenItem': PropertySchema(
      id: 7,
      name: r'isOpenItem',
      type: IsarType.bool,
    ),
    r'isWeightItem': PropertySchema(
      id: 8,
      name: r'isWeightItem',
      type: IsarType.bool,
    ),
    r'itemGroupId': PropertySchema(
      id: 9,
      name: r'itemGroupId',
      type: IsarType.long,
    ),
    r'itemId': PropertySchema(
      id: 10,
      name: r'itemId',
      type: IsarType.long,
    ),
    r'itemName': PropertySchema(
      id: 11,
      name: r'itemName',
      type: IsarType.string,
    ),
    r'itemRate': PropertySchema(
      id: 12,
      name: r'itemRate',
      type: IsarType.long,
    ),
    r'rateWithTax': PropertySchema(
      id: 13,
      name: r'rateWithTax',
      type: IsarType.long,
    ),
    r'shortcode': PropertySchema(
      id: 14,
      name: r'shortcode',
      type: IsarType.string,
    ),
    r'taxId': PropertySchema(
      id: 15,
      name: r'taxId',
      type: IsarType.long,
    )
  },
  estimateSize: _itemsModelEstimateSize,
  serialize: _itemsModelSerialize,
  deserialize: _itemsModelDeserialize,
  deserializeProp: _itemsModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _itemsModelGetId,
  getLinks: _itemsModelGetLinks,
  attach: _itemsModelAttach,
  version: '3.1.0+1',
);

int _itemsModelEstimateSize(
  ItemsModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.barcode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.foodType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.hsnCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.imgLink;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.itemName.length * 3;
  {
    final value = object.shortcode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _itemsModelSerialize(
  ItemsModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.barcode);
  writer.writeString(offsets[1], object.foodType);
  writer.writeString(offsets[2], object.hsnCode);
  writer.writeString(offsets[3], object.imgLink);
  writer.writeBool(offsets[4], object.isActive);
  writer.writeBool(offsets[5], object.isAlcohol);
  writer.writeBool(offsets[6], object.isDeleted);
  writer.writeBool(offsets[7], object.isOpenItem);
  writer.writeBool(offsets[8], object.isWeightItem);
  writer.writeLong(offsets[9], object.itemGroupId);
  writer.writeLong(offsets[10], object.itemId);
  writer.writeString(offsets[11], object.itemName);
  writer.writeLong(offsets[12], object.itemRate);
  writer.writeLong(offsets[13], object.rateWithTax);
  writer.writeString(offsets[14], object.shortcode);
  writer.writeLong(offsets[15], object.taxId);
}

ItemsModel _itemsModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ItemsModel(
    barcode: reader.readStringOrNull(offsets[0]),
    foodType: reader.readStringOrNull(offsets[1]),
    hsnCode: reader.readStringOrNull(offsets[2]),
    id: id,
    imgLink: reader.readStringOrNull(offsets[3]),
    isActive: reader.readBoolOrNull(offsets[4]),
    isAlcohol: reader.readBoolOrNull(offsets[5]),
    isDeleted: reader.readBoolOrNull(offsets[6]),
    isOpenItem: reader.readBoolOrNull(offsets[7]),
    isWeightItem: reader.readBoolOrNull(offsets[8]),
    itemGroupId: reader.readLongOrNull(offsets[9]),
    itemId: reader.readLongOrNull(offsets[10]),
    itemName: reader.readString(offsets[11]),
    itemRate: reader.readLongOrNull(offsets[12]),
    rateWithTax: reader.readLongOrNull(offsets[13]),
    shortcode: reader.readStringOrNull(offsets[14]),
    taxId: reader.readLongOrNull(offsets[15]),
  );
  return object;
}

P _itemsModelDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _itemsModelGetId(ItemsModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _itemsModelGetLinks(ItemsModel object) {
  return [];
}

void _itemsModelAttach(IsarCollection<dynamic> col, Id id, ItemsModel object) {
  object.id = id;
}

extension ItemsModelQueryWhereSort
    on QueryBuilder<ItemsModel, ItemsModel, QWhere> {
  QueryBuilder<ItemsModel, ItemsModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ItemsModelQueryWhere
    on QueryBuilder<ItemsModel, ItemsModel, QWhereClause> {
  QueryBuilder<ItemsModel, ItemsModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<ItemsModel, ItemsModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterWhereClause> idBetween(
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

extension ItemsModelQueryFilter
    on QueryBuilder<ItemsModel, ItemsModel, QFilterCondition> {
  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> barcodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'barcode',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      barcodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'barcode',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> barcodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      barcodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> barcodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> barcodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'barcode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> barcodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> barcodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> barcodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'barcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> barcodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'barcode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> barcodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'barcode',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      barcodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'barcode',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> foodTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'foodType',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      foodTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'foodType',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> foodTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'foodType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      foodTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'foodType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> foodTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'foodType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> foodTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'foodType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      foodTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'foodType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> foodTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'foodType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> foodTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'foodType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> foodTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'foodType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      foodTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'foodType',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      foodTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'foodType',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> hsnCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hsnCode',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      hsnCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hsnCode',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> hsnCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      hsnCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> hsnCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> hsnCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hsnCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> hsnCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> hsnCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> hsnCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> hsnCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hsnCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> hsnCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hsnCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      hsnCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hsnCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> imgLinkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imgLink',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      imgLinkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imgLink',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> imgLinkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imgLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      imgLinkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imgLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> imgLinkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imgLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> imgLinkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imgLink',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> imgLinkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imgLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> imgLinkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imgLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> imgLinkContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imgLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> imgLinkMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imgLink',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> imgLinkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imgLink',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      imgLinkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imgLink',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> isActiveIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      isActiveIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isActive',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> isActiveEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      isAlcoholIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAlcohol',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      isAlcoholIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAlcohol',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> isAlcoholEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAlcohol',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> isDeletedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      isOpenItemIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isOpenItem',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      isOpenItemIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isOpenItem',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> isOpenItemEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isOpenItem',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      isWeightItemIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isWeightItem',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      isWeightItemIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isWeightItem',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      isWeightItemEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isWeightItem',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemGroupIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemGroupId',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemGroupIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemGroupId',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemGroupIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemGroupIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemGroupIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemGroupId',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemGroupIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemGroupId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemNameEqualTo(
    String value, {
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

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemNameGreaterThan(
    String value, {
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

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemNameLessThan(
    String value, {
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

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemNameBetween(
    String lower,
    String upper, {
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

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
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

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemNameEndsWith(
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

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemRateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemRate',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemRateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemRate',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemRateEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemRate',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      itemRateGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemRate',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemRateLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemRate',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> itemRateBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      rateWithTaxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rateWithTax',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      rateWithTaxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rateWithTax',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      rateWithTaxEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rateWithTax',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      rateWithTaxGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rateWithTax',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      rateWithTaxLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rateWithTax',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      rateWithTaxBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rateWithTax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      shortcodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shortcode',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      shortcodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shortcode',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> shortcodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shortcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      shortcodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shortcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> shortcodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shortcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> shortcodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shortcode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      shortcodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shortcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> shortcodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shortcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> shortcodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shortcode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> shortcodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shortcode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      shortcodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shortcode',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition>
      shortcodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shortcode',
        value: '',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> taxIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxId',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> taxIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxId',
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> taxIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxId',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> taxIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxId',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> taxIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxId',
        value: value,
      ));
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterFilterCondition> taxIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ItemsModelQueryObject
    on QueryBuilder<ItemsModel, ItemsModel, QFilterCondition> {}

extension ItemsModelQueryLinks
    on QueryBuilder<ItemsModel, ItemsModel, QFilterCondition> {}

extension ItemsModelQuerySortBy
    on QueryBuilder<ItemsModel, ItemsModel, QSortBy> {
  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByBarcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'barcode', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByBarcodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'barcode', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByFoodType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foodType', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByFoodTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foodType', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByHsnCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hsnCode', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByHsnCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hsnCode', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByImgLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgLink', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByImgLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgLink', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByIsAlcohol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlcohol', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByIsAlcoholDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlcohol', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByIsOpenItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOpenItem', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByIsOpenItemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOpenItem', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByIsWeightItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWeightItem', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByIsWeightItemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWeightItem', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByItemGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByItemGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByItemName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByItemNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByItemRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemRate', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByItemRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemRate', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByRateWithTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rateWithTax', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByRateWithTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rateWithTax', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByShortcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortcode', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByShortcodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortcode', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByTaxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> sortByTaxIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.desc);
    });
  }
}

extension ItemsModelQuerySortThenBy
    on QueryBuilder<ItemsModel, ItemsModel, QSortThenBy> {
  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByBarcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'barcode', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByBarcodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'barcode', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByFoodType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foodType', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByFoodTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foodType', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByHsnCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hsnCode', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByHsnCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hsnCode', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByImgLink() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgLink', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByImgLinkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgLink', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIsAlcohol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlcohol', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIsAlcoholDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAlcohol', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIsOpenItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOpenItem', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIsOpenItemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOpenItem', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIsWeightItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWeightItem', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByIsWeightItemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isWeightItem', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByItemGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByItemGroupIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemGroupId', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByItemName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByItemNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemName', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByItemRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemRate', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByItemRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemRate', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByRateWithTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rateWithTax', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByRateWithTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rateWithTax', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByShortcode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortcode', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByShortcodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortcode', Sort.desc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByTaxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.asc);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QAfterSortBy> thenByTaxIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxId', Sort.desc);
    });
  }
}

extension ItemsModelQueryWhereDistinct
    on QueryBuilder<ItemsModel, ItemsModel, QDistinct> {
  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByBarcode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'barcode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByFoodType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'foodType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByHsnCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hsnCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByImgLink(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imgLink', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByIsAlcohol() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAlcohol');
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByIsOpenItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isOpenItem');
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByIsWeightItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isWeightItem');
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByItemGroupId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemGroupId');
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemId');
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByItemName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByItemRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemRate');
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByRateWithTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rateWithTax');
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByShortcode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shortcode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ItemsModel, ItemsModel, QDistinct> distinctByTaxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxId');
    });
  }
}

extension ItemsModelQueryProperty
    on QueryBuilder<ItemsModel, ItemsModel, QQueryProperty> {
  QueryBuilder<ItemsModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ItemsModel, String?, QQueryOperations> barcodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'barcode');
    });
  }

  QueryBuilder<ItemsModel, String?, QQueryOperations> foodTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'foodType');
    });
  }

  QueryBuilder<ItemsModel, String?, QQueryOperations> hsnCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hsnCode');
    });
  }

  QueryBuilder<ItemsModel, String?, QQueryOperations> imgLinkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imgLink');
    });
  }

  QueryBuilder<ItemsModel, bool?, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<ItemsModel, bool?, QQueryOperations> isAlcoholProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAlcohol');
    });
  }

  QueryBuilder<ItemsModel, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<ItemsModel, bool?, QQueryOperations> isOpenItemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isOpenItem');
    });
  }

  QueryBuilder<ItemsModel, bool?, QQueryOperations> isWeightItemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isWeightItem');
    });
  }

  QueryBuilder<ItemsModel, int?, QQueryOperations> itemGroupIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemGroupId');
    });
  }

  QueryBuilder<ItemsModel, int?, QQueryOperations> itemIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemId');
    });
  }

  QueryBuilder<ItemsModel, String, QQueryOperations> itemNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemName');
    });
  }

  QueryBuilder<ItemsModel, int?, QQueryOperations> itemRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemRate');
    });
  }

  QueryBuilder<ItemsModel, int?, QQueryOperations> rateWithTaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rateWithTax');
    });
  }

  QueryBuilder<ItemsModel, String?, QQueryOperations> shortcodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shortcode');
    });
  }

  QueryBuilder<ItemsModel, int?, QQueryOperations> taxIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxId');
    });
  }
}
