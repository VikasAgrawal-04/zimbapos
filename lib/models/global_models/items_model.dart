import 'dart:convert';

import 'package:isar/isar.dart';

part 'items_model.g.dart';

@collection
class ItemsModel {
  Id id = Isar.autoIncrement;
  String? itemId;
  String? itemName;
  String? itemGroupId;
  String? foodType;
  bool? isAlcohol;
  double? itemRate;
  String? taxId;
  double? rateWithTax;
  bool? isOpenItem;
  String? barcode;
  String? shortcode;
  bool? isWeightItem;
  String? hsnCode;
  String? imgLink;
  bool? isActive;
  bool? isDeleted;

  // Constructor
  ItemsModel({
    this.id = Isar.autoIncrement,
    this.itemId,
    this.itemName,
    this.itemGroupId,
    this.foodType,
    this.isAlcohol = false,
    this.itemRate,
    this.taxId,
    this.rateWithTax,
    this.isOpenItem = false,
    this.barcode,
    this.shortcode,
    this.isWeightItem = false,
    this.hsnCode,
    this.imgLink,
    this.isActive = true,
    this.isDeleted = false,
  });

  ItemsModel copyWith({
    Id? id,
    String? itemId,
    String? itemName,
    String? itemGroupId,
    String? foodType,
    bool? isAlcohol,
    double? itemRate,
    String? taxId,
    double? rateWithTax,
    bool? isOpenItem,
    String? barcode,
    String? shortcode,
    bool? isWeightItem,
    String? hsnCode,
    String? imgLink,
    bool? isActive,
    bool? isDeleted,
  }) {
    return ItemsModel(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      itemName: itemName ?? this.itemName,
      itemGroupId: itemGroupId ?? this.itemGroupId,
      foodType: foodType ?? this.foodType,
      isAlcohol: isAlcohol ?? this.isAlcohol,
      itemRate: itemRate ?? this.itemRate,
      taxId: taxId ?? this.taxId,
      rateWithTax: rateWithTax ?? this.rateWithTax,
      isOpenItem: isOpenItem ?? this.isOpenItem,
      barcode: barcode ?? this.barcode,
      shortcode: shortcode ?? this.shortcode,
      isWeightItem: isWeightItem ?? this.isWeightItem,
      hsnCode: hsnCode ?? this.hsnCode,
      imgLink: imgLink ?? this.imgLink,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'itemId': itemId,
      'itemName': itemName,
      'itemGroupId': itemGroupId,
      'foodType': foodType,
      'isAlcohol': isAlcohol,
      'itemRate': itemRate,
      'taxId': taxId,
      'rateWithTax': rateWithTax,
      'isOpenItem': isOpenItem,
      'barcode': barcode,
      'shortcode': shortcode,
      'isWeightItem': isWeightItem,
      'hsnCode': hsnCode,
      'imgLink': imgLink,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory ItemsModel.fromMap(Map<String, dynamic> map) {
    return ItemsModel(
      id: map['id'],
      itemId: map['itemId'] != null ? map['itemId'] as String : null,
      itemName: map['itemName'] != null ? map['itemName'] as String : null,
      itemGroupId:
          map['itemGroupId'] != null ? map['itemGroupId'] as String : null,
      foodType: map['foodType'] != null ? map['foodType'] as String : null,
      isAlcohol: map['isAlcohol'] != null ? map['isAlcohol'] as bool : null,
      itemRate: map['itemRate'] != null ? map['itemRate'] as double : null,
      taxId: map['taxId'] != null ? map['taxId'] as String : null,
      rateWithTax:
          map['rateWithTax'] != null ? map['rateWithTax'] as double : null,
      isOpenItem: map['isOpenItem'] != null ? map['isOpenItem'] as bool : null,
      barcode: map['barcode'] != null ? map['barcode'] as String : null,
      shortcode: map['shortcode'] != null ? map['shortcode'] as String : null,
      isWeightItem:
          map['isWeightItem'] != null ? map['isWeightItem'] as bool : null,
      hsnCode: map['hsnCode'] != null ? map['hsnCode'] as String : null,
      imgLink: map['imgLink'] != null ? map['imgLink'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemsModel.fromJson(String source) =>
      ItemsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemsModel(id: $id, itemId: $itemId, itemName: $itemName, itemGroupId: $itemGroupId, foodType: $foodType, isAlcohol: $isAlcohol, itemRate: $itemRate, taxId: $taxId, rateWithTax: $rateWithTax, isOpenItem: $isOpenItem, barcode: $barcode, shortcode: $shortcode, isWeightItem: $isWeightItem, hsnCode: $hsnCode, imgLink: $imgLink, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant ItemsModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.itemId == itemId &&
        other.itemName == itemName &&
        other.itemGroupId == itemGroupId &&
        other.foodType == foodType &&
        other.isAlcohol == isAlcohol &&
        other.itemRate == itemRate &&
        other.taxId == taxId &&
        other.rateWithTax == rateWithTax &&
        other.isOpenItem == isOpenItem &&
        other.barcode == barcode &&
        other.shortcode == shortcode &&
        other.isWeightItem == isWeightItem &&
        other.hsnCode == hsnCode &&
        other.imgLink == imgLink &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        itemId.hashCode ^
        itemName.hashCode ^
        itemGroupId.hashCode ^
        foodType.hashCode ^
        isAlcohol.hashCode ^
        itemRate.hashCode ^
        taxId.hashCode ^
        rateWithTax.hashCode ^
        isOpenItem.hashCode ^
        barcode.hashCode ^
        shortcode.hashCode ^
        isWeightItem.hashCode ^
        hsnCode.hashCode ^
        imgLink.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
