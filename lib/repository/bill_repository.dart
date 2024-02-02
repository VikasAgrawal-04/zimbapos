import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/temp_bill_header_model.dart';
import 'package:zimbapos/models/global_models/temp_bill_lines_model.dart';

class BillRepository {
  Isar db;
  BillRepository(this.db);

  Future<Tuple2<bool, String>> createOrUpdateBill(
      {required TempBillHeaderModel header,
      required List<TempBillLines> lines}) async {
    try {
      final billExists = await db.tempBillHeaderModels
          .filter()
          .tableIdEqualTo(header.tableId)
          .findFirst();
      if (billExists != null) {
        final existingLines = db.tempBillLines
            .filter()
            .billIdEqualTo(billExists.billId)
            .findAllSync();
        return updateNewBill(
            header: header,
            lines: lines,
            existingBillHeader: billExists,
            existingBillLines: existingLines);
      } else {
        return createNewBill(header: header, lines: lines);
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> createNewBill(
      {required TempBillHeaderModel header,
      required List<TempBillLines> lines}) async {
    try {
      //Handling the headers
      final billGenId = Helpers.generateUuId();
      header.billId = billGenId;
      header.billStartDateTime = DateTime.now().toIso8601String();

      //Bill Lines
      lines.map((e) => e.billId = billGenId);
      lines.fold(
          1,
          (previousValue, element) =>
              previousValue + (element.linePosition ?? 0));

      db.writeTxnSync(() {
        db.tempBillHeaderModels.putSync(header);
        db.tempBillLines.putAllSync(lines);
      });
      return const Tuple2(true, "Bill Created");
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updateNewBill(
      {required TempBillHeaderModel header,
      required List<TempBillLines> lines,
      required TempBillHeaderModel existingBillHeader,
      required List<TempBillLines> existingBillLines}) async {
    try {
      final lastLinePos = existingBillLines.last.linePosition ?? 1;
      existingBillHeader.totalExTax =
          (existingBillHeader.totalExTax ?? 0.0) + (header.totalExTax ?? 0.0);

      existingBillHeader.totalTaxAmount =
          (existingBillHeader.totalTaxAmount ?? 0.0) +
              (header.totalTaxAmount ?? 0.0);

      existingBillHeader.serviceChargeAmount =
          (existingBillHeader.serviceChargeAmount ?? 0.0) +
              (header.serviceChargeAmount ?? 0.0);

      existingBillHeader.totalGstAmount =
          (existingBillHeader.totalGstAmount ?? 0.0) +
              (header.totalGstAmount ?? 0.0);

      existingBillHeader.totalVatAmount =
          (existingBillHeader.totalVatAmount ?? 0.0) +
              (header.totalVatAmount ?? 0.0);

      existingBillHeader.roundOffAmount =
          (existingBillHeader.roundOffAmount ?? 0.0) +
              (header.roundOffAmount ?? 0.0);

      existingBillHeader.totalAmount =
          (existingBillHeader.totalAmount ?? 0.0) + (header.totalAmount ?? 0.0);

      existingBillHeader.pax = header.pax;

      lines.fold(
          lastLinePos,
          (previousValue, element) =>
              previousValue + (element.linePosition ?? 0));

      db.writeTxnSync(() {
        db.tempBillHeaderModels.putSync(existingBillHeader);
        db.tempBillLines.putAllSync(lines);
      });

      return const Tuple2(true, 'Bill Updated');
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }
}
