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

  // Factory method to create ItemsModel from a JSON map
  factory ItemsModel.fromJson(Map<String, dynamic> json) {
    return ItemsModel(
      itemId: json['itemId'] ?? Isar.autoIncrement,
      itemName: json['itemName'],
      itemGroupId: json['itemGroupId'],
      foodType: json['foodType'],
      isAlcohol: json['isAlcohol'],
      itemRate: json['itemRate'],
      taxId: json['taxId'],
      rateWithTax: json['rateWithTax'],
      isOpenItem: json['isOpenItem'],
      barcode: json['barcode'],
      shortcode: json['shortcode'],
      isWeightItem: json['isWeightItem'],
      hsnCode: json['hsnCode'],
      imgLink: json['imgLink'],
      isActive: json['isActive'],
      isDeleted: json['isDeleted'],
    );
  }

  // Convert ItemsModel to a JSON map
  Map<String, dynamic> toJson() {
    return {
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
}
