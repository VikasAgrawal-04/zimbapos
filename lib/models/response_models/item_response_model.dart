// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final itemApiResponseModel = itemApiResponseModelFromJson(jsonString);

import 'dart:convert';

ItemApiResponseModel itemApiResponseModelFromJson(String str) =>
    ItemApiResponseModel.fromJson(json.decode(str));

String itemApiResponseModelToJson(ItemApiResponseModel data) =>
    json.encode(data.toJson());

class ItemApiResponseModel {
  List<ItemList> data;

  ItemApiResponseModel({
    required this.data,
  });

  factory ItemApiResponseModel.fromJson(Map<String, dynamic> json) =>
      ItemApiResponseModel(
        data:
            List<ItemList>.from(json["data"].map((x) => ItemList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ItemList {
  int id;
  String itemId;
  String itemName;
  String itemGroupId;
  String foodType;
  bool isAlcohol;
  double itemRate;
  String taxId;
  dynamic rateWithTax;
  bool isOpenItem;
  dynamic barcode;
  dynamic shortcode;
  bool isWeightItem;
  dynamic hsnCode;
  dynamic imgLink;
  bool isActive;
  bool isDeleted;
  Tax tax;
  int quantity;

  ItemList({
    required this.id,
    required this.itemId,
    required this.itemName,
    required this.itemGroupId,
    required this.foodType,
    required this.isAlcohol,
    required this.itemRate,
    required this.taxId,
    required this.rateWithTax,
    required this.isOpenItem,
    required this.barcode,
    required this.shortcode,
    required this.isWeightItem,
    required this.hsnCode,
    required this.imgLink,
    required this.isActive,
    required this.isDeleted,
    required this.tax,
    this.quantity = 0,
  });

  factory ItemList.fromJson(Map<String, dynamic> json) => ItemList(
        id: json["id"],
        itemId: json["itemId"],
        itemName: json["itemName"],
        itemGroupId: json["itemGroupId"],
        foodType: json["foodType"],
        isAlcohol: json["isAlcohol"],
        itemRate: json["itemRate"],
        taxId: json["taxId"],
        rateWithTax: json["rateWithTax"],
        isOpenItem: json["isOpenItem"],
        barcode: json["barcode"],
        shortcode: json["shortcode"],
        isWeightItem: json["isWeightItem"],
        hsnCode: json["hsnCode"],
        imgLink: json["imgLink"],
        isActive: json["isActive"],
        isDeleted: json["isDeleted"],
        tax: Tax.fromJson(json["tax"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "itemId": itemId,
        "itemName": itemName,
        "itemGroupId": itemGroupId,
        "foodType": foodType,
        "isAlcohol": isAlcohol,
        "itemRate": itemRate,
        "taxId": taxId,
        "rateWithTax": rateWithTax,
        "isOpenItem": isOpenItem,
        "barcode": barcode,
        "shortcode": shortcode,
        "isWeightItem": isWeightItem,
        "hsnCode": hsnCode,
        "imgLink": imgLink,
        "isActive": isActive,
        "isDeleted": isDeleted,
        "tax": tax.toJson(),
      };

  ItemList copyWith({
    int? id,
    String? itemId,
    String? itemName,
    String? itemGroupId,
    String? foodType,
    bool? isAlcohol,
    double? itemRate,
    String? taxId,
    dynamic rateWithTax,
    bool? isOpenItem,
    dynamic barcode,
    dynamic shortcode,
    bool? isWeightItem,
    dynamic hsnCode,
    dynamic imgLink,
    bool? isActive,
    bool? isDeleted,
    Tax? tax,
    int? quantity,
  }) {
    return ItemList(
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
      tax: tax ?? this.tax,
      quantity: quantity ?? this.quantity,
    );
  }
}

class Tax {
  int id;
  String taxId;
  String taxName;
  String taxType;
  double taxPercent;
  bool isActive;
  bool isDeleted;

  Tax({
    required this.id,
    required this.taxId,
    required this.taxName,
    required this.taxType,
    required this.taxPercent,
    required this.isActive,
    required this.isDeleted,
  });

  factory Tax.fromJson(Map<String, dynamic> json) => Tax(
        id: json["id"],
        taxId: json["taxId"],
        taxName: json["taxName"],
        taxType: json["taxType"],
        taxPercent: json["taxPercent"],
        isActive: json["isActive"],
        isDeleted: json["isDeleted"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "taxId": taxId,
        "taxName": taxName,
        "taxType": taxType,
        "taxPercent": taxPercent,
        "isActive": isActive,
        "isDeleted": isDeleted,
      };
}
