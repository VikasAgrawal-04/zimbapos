import 'dart:convert';

import 'package:isar/isar.dart';

part 'temp_bill_lines_model.g.dart';

@collection
class TempBillLines {
  Id id = Isar.autoIncrement;
  String? billId;
  String? lineId;
  int? linePosition = Isar.autoIncrement;
  String? itemId;
  String? itemName;
  int? quantity;
  String? comment;
  double? priceExTax;
  String? taxId;
  String? taxType;
  double? taxPercent;
  double? priceWithTax;
  double? discountPercent;
  double? discountAmount;
  double? lineTotal;
  double? itemGroupId;
  double? mainGroupId;

  TempBillLines({
    this.id = Isar.autoIncrement,
    this.billId,
    this.lineId,
    this.linePosition = Isar.autoIncrement,
    this.itemId,
    this.itemName,
    this.quantity,
    this.comment,
    this.priceExTax,
    this.taxId,
    this.taxType,
    this.taxPercent,
    this.priceWithTax,
    this.discountPercent,
    this.discountAmount,
    this.lineTotal,
    this.itemGroupId,
    this.mainGroupId,
  });

  TempBillLines copyWith({
    Id? id,
    String? billId,
    String? lineId,
    int? linePosition,
    String? itemId,
    String? itemName,
    int? quantity,
    String? comment,
    double? priceExTax,
    String? taxId,
    String? taxType,
    double? taxPercent,
    double? priceWithTax,
    double? discountPercent,
    double? discountAmount,
    double? lineTotal,
    double? itemGroupId,
    double? mainGroupId,
  }) {
    return TempBillLines(
      id: id ?? this.id,
      billId: billId ?? this.billId,
      lineId: lineId ?? this.lineId,
      linePosition: linePosition ?? this.linePosition,
      itemId: itemId ?? this.itemId,
      itemName: itemName ?? this.itemName,
      quantity: quantity ?? this.quantity,
      comment: comment ?? this.comment,
      priceExTax: priceExTax ?? this.priceExTax,
      taxId: taxId ?? this.taxId,
      taxType: taxType ?? this.taxType,
      taxPercent: taxPercent ?? this.taxPercent,
      priceWithTax: priceWithTax ?? this.priceWithTax,
      discountPercent: discountPercent ?? this.discountPercent,
      discountAmount: discountAmount ?? this.discountAmount,
      lineTotal: lineTotal ?? this.lineTotal,
      itemGroupId: itemGroupId ?? this.itemGroupId,
      mainGroupId: mainGroupId ?? this.mainGroupId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'billId': billId,
      'lineId': lineId,
      'linePosition': linePosition,
      'itemId': itemId,
      'itemName': itemName,
      'quantity': quantity,
      'comment': comment,
      'priceExTax': priceExTax,
      'taxId': taxId,
      'taxType': taxType,
      'taxPercent': taxPercent,
      'priceWithTax': priceWithTax,
      'discountPercent': discountPercent,
      'discountAmount': discountAmount,
      'lineTotal': lineTotal,
      'itemGroupId': itemGroupId,
      'mainGroupId': mainGroupId,
    };
  }

  factory TempBillLines.fromMap(Map<String, dynamic> map) {
    return TempBillLines(
      id: map['id'] ?? Isar.autoIncrement,
      billId: map['billId'] != null ? map['billId'] as String : null,
      lineId: map['lineId'] != null ? map['lineId'] as String : null,
      linePosition: map['linePosition'] != null
          ? map['linePosition'] as int
          : Isar.autoIncrement,
      itemId: map['itemId'] != null ? map['itemId'] as String : null,
      itemName: map['itemName'] != null ? map['itemName'] as String : null,
      quantity: map['quantity'] != null ? map['quantity'] as int : null,
      comment: map['comment'] != null ? map['comment'] as String : null,
      priceExTax:
          map['priceExTax'] != null ? map['priceExTax'] as double : null,
      taxId: map['taxId'] != null ? map['taxId'] as String : null,
      taxType: map['taxType'] != null ? map['taxType'] as String : null,
      taxPercent:
          map['taxPercent'] != null ? map['taxPercent'] as double : null,
      priceWithTax:
          map['priceWithTax'] != null ? map['priceWithTax'] as double : null,
      discountPercent: map['discountPercent'] != null
          ? map['discountPercent'] as double
          : null,
      discountAmount: map['discountAmount'] != null
          ? map['discountAmount'] as double
          : null,
      lineTotal: map['lineTotal'] != null ? map['lineTotal'] as double : null,
      itemGroupId:
          map['itemGroupId'] != null ? map['itemGroupId'] as double : null,
      mainGroupId:
          map['mainGroupId'] != null ? map['mainGroupId'] as double : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TempBillLines.fromJson(String source) =>
      TempBillLines.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TempBillLines(id: $id, billId: $billId, lineId: $lineId, linePosition: $linePosition, itemId: $itemId, itemName: $itemName, quantity: $quantity, comment: $comment, priceExTax: $priceExTax, taxId: $taxId, taxType: $taxType, taxPercent: $taxPercent, priceWithTax: $priceWithTax, discountPercent: $discountPercent, discountAmount: $discountAmount, lineTotal: $lineTotal, itemGroupId: $itemGroupId, mainGroupId: $mainGroupId)';
  }

  @override
  bool operator ==(covariant TempBillLines other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.billId == billId &&
        other.lineId == lineId &&
        other.linePosition == linePosition &&
        other.itemId == itemId &&
        other.itemName == itemName &&
        other.quantity == quantity &&
        other.comment == comment &&
        other.priceExTax == priceExTax &&
        other.taxId == taxId &&
        other.taxType == taxType &&
        other.taxPercent == taxPercent &&
        other.priceWithTax == priceWithTax &&
        other.discountPercent == discountPercent &&
        other.discountAmount == discountAmount &&
        other.lineTotal == lineTotal &&
        other.itemGroupId == itemGroupId &&
        other.mainGroupId == mainGroupId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        billId.hashCode ^
        lineId.hashCode ^
        linePosition.hashCode ^
        itemId.hashCode ^
        itemName.hashCode ^
        quantity.hashCode ^
        comment.hashCode ^
        priceExTax.hashCode ^
        taxId.hashCode ^
        taxType.hashCode ^
        taxPercent.hashCode ^
        priceWithTax.hashCode ^
        discountPercent.hashCode ^
        discountAmount.hashCode ^
        lineTotal.hashCode ^
        itemGroupId.hashCode ^
        mainGroupId.hashCode;
  }
}
