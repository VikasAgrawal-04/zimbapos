// To parse this JSON data, do
//
//     final tempBillRequestModel = tempBillRequestModelFromJson(jsonString);

import 'dart:convert';

TempBillRequestModel tempBillRequestModelFromJson(String str) =>
    TempBillRequestModel.fromJson(json.decode(str));

String tempBillRequestModelToJson(TempBillRequestModel data) =>
    json.encode(data.toJson());

class TempBillRequestModel {
  BillHeader billHeader;
  List<BillLine> billLines;

  TempBillRequestModel({
    required this.billHeader,
    required this.billLines,
  });

  factory TempBillRequestModel.fromJson(Map<String, dynamic> json) =>
      TempBillRequestModel(
        billHeader: BillHeader.fromJson(json["bill_header"]),
        billLines: List<BillLine>.from(
            json["bill_lines"].map((x) => BillLine.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "bill_header": billHeader.toJson(),
        "bill_lines": List<dynamic>.from(billLines.map((x) => x.toJson())),
      };
}

class BillHeader {
  String? outletId;
  int? terminalId;
  String tableId;
  double totalExTax;
  double totalTaxAmount;
  double serviceChargeAmount;
  double totalGstAmount;
  double totalVatAmount;
  double roundOffAmount;
  double totalAmount;
  String customerId;
  int pax;
  String waiterId;
  bool isBillPrinted;

  BillHeader({
    this.outletId,
    this.terminalId,
    required this.tableId,
    required this.totalExTax,
    required this.totalTaxAmount,
    required this.serviceChargeAmount,
    required this.totalGstAmount,
    required this.totalVatAmount,
    required this.roundOffAmount,
    required this.totalAmount,
    required this.customerId,
    required this.pax,
    required this.waiterId,
    required this.isBillPrinted,
  });

  factory BillHeader.fromJson(Map<String, dynamic> json) => BillHeader(
        outletId: json["outletId"],
        terminalId: json["terminalId"],
        tableId: json["tableId"],
        totalExTax: json["totalExTax"]?.toDouble(),
        totalTaxAmount: json["totalTaxAmount"]?.toDouble(),
        serviceChargeAmount: json["serviceChargeAmount"]?.toDouble(),
        totalGstAmount: json["totalGstAmount"]?.toDouble(),
        totalVatAmount: json["totalVatAmount"]?.toDouble(),
        roundOffAmount: json["roundOffAmount"]?.toDouble(),
        totalAmount: json["totalAmount"]?.toDouble(),
        customerId: json["customerId"],
        pax: json["pax"],
        waiterId: json["waiterId"],
        isBillPrinted: json["isBillPrinted"],
      );

  Map<String, dynamic> toJson() => {
        "outletId": outletId,
        "terminalId": terminalId,
        "tableId": tableId,
        "totalExTax": totalExTax,
        "totalTaxAmount": totalTaxAmount,
        "serviceChargeAmount": serviceChargeAmount,
        "totalGstAmount": totalGstAmount,
        "totalVatAmount": totalVatAmount,
        "roundOffAmount": roundOffAmount,
        "totalAmount": totalAmount,
        "customerId": customerId,
        "pax": pax,
        "waiterId": waiterId,
        "isBillPrinted": isBillPrinted,
      };
}

class BillLine {
  String itemId;
  String itemName;
  int quantity;
  double priceExTax;
  String taxId;
  String taxType;
  double taxPercent;
  double priceWithTax;
  double lineTotal;
  String itemGroupId;
  String mainGroupId;

  BillLine({
    required this.itemId,
    required this.itemName,
    required this.quantity,
    required this.priceExTax,
    required this.taxId,
    required this.taxType,
    required this.taxPercent,
    required this.priceWithTax,
    required this.lineTotal,
    required this.itemGroupId,
    required this.mainGroupId,
  });

  factory BillLine.fromJson(Map<String, dynamic> json) => BillLine(
        itemId: json["itemId"],
        itemName: json["itemName"],
        quantity: json["quantity"],
        priceExTax: json["priceExTax"]?.toDouble(),
        taxId: json["taxId"],
        taxType: json["taxType"],
        taxPercent: json["taxPercent"]?.toDouble(),
        priceWithTax: json["priceWithTax"]?.toDouble(),
        lineTotal: json["lineTotal"]?.toDouble(),
        itemGroupId: json["itemGroupId"],
        mainGroupId: json["mainGroupId"],
      );

  Map<String, dynamic> toJson() => {
        "itemId": itemId,
        "itemName": itemName,
        "quantity": quantity,
        "priceExTax": priceExTax,
        "taxId": taxId,
        "taxType": taxType,
        "taxPercent": taxPercent,
        "priceWithTax": priceWithTax,
        "lineTotal": lineTotal,
        "itemGroupId": itemGroupId,
        "mainGroupId": mainGroupId,
      };
}
