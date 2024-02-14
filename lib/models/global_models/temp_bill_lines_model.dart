import 'package:isar/isar.dart';

part 'temp_bill_lines_model.g.dart';

@collection
class TempBillLines {
  Id id = Isar.autoIncrement;
  int? billId;
  String? lineId;
  int? linePosition;
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
  String? kotId;
  String? itemGroupId;
  String? mainGroupId;

  TempBillLines(
      {this.id = Isar.autoIncrement,
      this.billId,
      this.lineId,
      this.linePosition,
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
      this.kotId});

  TempBillLines copyWith(
      {Id? id,
      int? billId,
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
      String? itemGroupId,
      String? mainGroupId,
      String? kotId}) {
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
        kotId: kotId ?? this.kotId);
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
      'kotId': kotId,
    };
  }

  factory TempBillLines.fromMap(Map<String, dynamic> map) {
    return TempBillLines(
        id: map['id'] ?? Isar.autoIncrement,
        billId: map['billId'] != null ? map['billId'] as int : null,
        lineId: map['lineId'] != null ? map['lineId'] as String : null,
        linePosition:
            map['linePosition'] != null ? map['linePosition'] as int : null,
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
            map['itemGroupId'] != null ? map['itemGroupId'] as String : null,
        mainGroupId:
            map['mainGroupId'] != null ? map['mainGroupId'] as String : null,
        kotId: map['kotId'] != null ? map['kotId'] as String : null);
  }
}
