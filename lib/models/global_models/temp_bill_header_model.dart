import 'dart:convert';

import 'package:isar/isar.dart';

part 'temp_bill_header_model.g.dart';

@collection
class TempBillHeaderModel {
  Id id = Isar.autoIncrement;
  int? billId;
  String? outletId;
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
  String? customerId;
  int? pax;
  String? waiterId;
  bool? isBillPrinted;
  int? recNo;

  TempBillHeaderModel(
      {this.id = Isar.autoIncrement,
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
      this.recNo});

  TempBillHeaderModel copyWith(
      {Id? id,
      int? billId,
      String? outletId,
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
      String? customerId,
      int? pax,
      String? waiterId,
      bool? isBillPrinted,
      int? recNo}) {
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
        recNo: recNo ?? this.recNo);
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
      'recNo': recNo
    };
  }

  factory TempBillHeaderModel.fromMap(Map<String, dynamic> map) {
    return TempBillHeaderModel(
      id: map['id'] ?? Isar.autoIncrement,
      billId: map['billId'] != null ? map['billId'] as int : null,
      outletId: map['outletId'] != null ? map['outletId'] as String : null,
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
          map['customerId'] != null ? map['customerId'] as String : null,
      pax: map['pax'] != null ? map['pax'] as int : null,
      waiterId: map['waiterId'] != null ? map['waiterId'] as String : null,
      isBillPrinted:
          map['isBillPrinted'] != null ? map['isBillPrinted'] as bool : null,
      recNo: map['recNo'] != null ? map['recNo'] as int? : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TempBillHeaderModel.fromJson(String source) =>
      TempBillHeaderModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
