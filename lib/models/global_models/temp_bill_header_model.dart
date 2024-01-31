import 'dart:convert';

import 'package:isar/isar.dart';

part 'temp_bill_header_model.g.dart';

@collection
class TempBillHeaderModel {
  Id id = Isar.autoIncrement;
  String? billId;
  int? outletId;
  String? terminalId;
  String? tableId;
  String? billStartDateTime;
  double? totalExTax;
  double? totalTaxAmount;
  double? serviceChargeAmount;
  double? totalGstAmount;
  double? totalVatAmount;
  double? roundOffAmount;
  double? totalAmount;
  double? customerId;
  double? pax;
  String? waiterId;
  bool? isBillPrinted;

  TempBillHeaderModel({
    this.id = Isar.autoIncrement,
    this.billId,
    this.outletId,
    this.terminalId,
    this.tableId,
    this.billStartDateTime,
    this.totalExTax,
    this.totalTaxAmount,
    this.serviceChargeAmount,
    this.totalGstAmount,
    this.totalVatAmount,
    this.roundOffAmount,
    this.totalAmount,
    this.customerId,
    this.pax,
    this.waiterId,
    this.isBillPrinted,
  });

  TempBillHeaderModel copyWith({
    Id? id,
    String? billId,
    int? outletId,
    String? terminalId,
    String? tableId,
    String? billStartDateTime,
    double? totalExTax,
    double? totalTaxAmount,
    double? serviceChargeAmount,
    double? totalGstAmount,
    double? totalVatAmount,
    double? roundOffAmount,
    double? totalAmount,
    double? customerId,
    double? pax,
    String? waiterId,
    bool? isBillPrinted,
  }) {
    return TempBillHeaderModel(
      id: id ?? this.id,
      billId: billId ?? this.billId,
      outletId: outletId ?? this.outletId,
      terminalId: terminalId ?? this.terminalId,
      tableId: tableId ?? this.tableId,
      billStartDateTime: billStartDateTime ?? this.billStartDateTime,
      totalExTax: totalExTax ?? this.totalExTax,
      totalTaxAmount: totalTaxAmount ?? this.totalTaxAmount,
      serviceChargeAmount: serviceChargeAmount ?? this.serviceChargeAmount,
      totalGstAmount: totalGstAmount ?? this.totalGstAmount,
      totalVatAmount: totalVatAmount ?? this.totalVatAmount,
      roundOffAmount: roundOffAmount ?? this.roundOffAmount,
      totalAmount: totalAmount ?? this.totalAmount,
      customerId: customerId ?? this.customerId,
      pax: pax ?? this.pax,
      waiterId: waiterId ?? this.waiterId,
      isBillPrinted: isBillPrinted ?? this.isBillPrinted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'billId': billId,
      'outletId': outletId,
      'terminalId': terminalId,
      'tableId': tableId,
      'billStartDateTime': billStartDateTime,
      'totalExTax': totalExTax,
      'totalTaxAmount': totalTaxAmount,
      'serviceChargeAmount': serviceChargeAmount,
      'totalGstAmount': totalGstAmount,
      'totalVatAmount': totalVatAmount,
      'roundOffAmount': roundOffAmount,
      'totalAmount': totalAmount,
      'customerId': customerId,
      'pax': pax,
      'waiterId': waiterId,
      'isBillPrinted': isBillPrinted,
    };
  }

  factory TempBillHeaderModel.fromMap(Map<String, dynamic> map) {
    return TempBillHeaderModel(
      id: map['id'] ?? Isar.autoIncrement,
      billId: map['billId'] != null ? map['billId'] as String : null,
      outletId: map['outletId'] != null ? map['outletId'] as int : null,
      terminalId:
          map['terminalId'] != null ? map['terminalId'] as String : null,
      tableId: map['tableId'] != null ? map['tableId'] as String : null,
      billStartDateTime: map['billStartDateTime'] != null
          ? map['billStartDateTime'] as String
          : null,
      totalExTax:
          map['totalExTax'] != null ? map['totalExTax'] as double : null,
      totalTaxAmount: map['totalTaxAmount'] != null
          ? map['totalTaxAmount'] as double
          : null,
      serviceChargeAmount: map['serviceChargeAmount'] != null
          ? map['serviceChargeAmount'] as double
          : null,
      totalGstAmount: map['totalGstAmount'] != null
          ? map['totalGstAmount'] as double
          : null,
      totalVatAmount: map['totalVatAmount'] != null
          ? map['totalVatAmount'] as double
          : null,
      roundOffAmount: map['roundOffAmount'] != null
          ? map['roundOffAmount'] as double
          : null,
      totalAmount:
          map['totalAmount'] != null ? map['totalAmount'] as double : null,
      customerId:
          map['customerId'] != null ? map['customerId'] as double : null,
      pax: map['pax'] != null ? map['pax'] as double : null,
      waiterId: map['waiterId'] != null ? map['waiterId'] as String : null,
      isBillPrinted:
          map['isBillPrinted'] != null ? map['isBillPrinted'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TempBillHeaderModel.fromJson(String source) =>
      TempBillHeaderModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TempBillHeaderModel(id: $id, billId: $billId, outletId: $outletId, terminalId: $terminalId, tableId: $tableId, billStartDateTime: $billStartDateTime, totalExTax: $totalExTax, totalTaxAmount: $totalTaxAmount, serviceChargeAmount: $serviceChargeAmount, totalGstAmount: $totalGstAmount, totalVatAmount: $totalVatAmount, roundOffAmount: $roundOffAmount, totalAmount: $totalAmount, customerId: $customerId, pax: $pax, waiterId: $waiterId, isBillPrinted: $isBillPrinted)';
  }

  @override
  bool operator ==(covariant TempBillHeaderModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.billId == billId &&
        other.outletId == outletId &&
        other.terminalId == terminalId &&
        other.tableId == tableId &&
        other.billStartDateTime == billStartDateTime &&
        other.totalExTax == totalExTax &&
        other.totalTaxAmount == totalTaxAmount &&
        other.serviceChargeAmount == serviceChargeAmount &&
        other.totalGstAmount == totalGstAmount &&
        other.totalVatAmount == totalVatAmount &&
        other.roundOffAmount == roundOffAmount &&
        other.totalAmount == totalAmount &&
        other.customerId == customerId &&
        other.pax == pax &&
        other.waiterId == waiterId &&
        other.isBillPrinted == isBillPrinted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        billId.hashCode ^
        outletId.hashCode ^
        terminalId.hashCode ^
        tableId.hashCode ^
        billStartDateTime.hashCode ^
        totalExTax.hashCode ^
        totalTaxAmount.hashCode ^
        serviceChargeAmount.hashCode ^
        totalGstAmount.hashCode ^
        totalVatAmount.hashCode ^
        roundOffAmount.hashCode ^
        totalAmount.hashCode ^
        customerId.hashCode ^
        pax.hashCode ^
        waiterId.hashCode ^
        isBillPrinted.hashCode;
  }
}
