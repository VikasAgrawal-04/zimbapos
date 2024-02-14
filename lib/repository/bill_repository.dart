import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/permanent_bill_header_model.dart';
import 'package:zimbapos/models/global_models/permanent_bill_lines_model.dart';
import 'package:zimbapos/models/global_models/temp_bill_header_model.dart';
import 'package:zimbapos/models/global_models/temp_bill_lines_model.dart';

class BillRepository {
  Isar db;
  BillRepository(this.db);

  Future<Tuple2<TempBillHeaderModel?, List<TempBillLines>>> getTempBill(
      {required String tableId}) async {
    try {
      final billHeader = db.tempBillHeaderModels
          .filter()
          .tableIdEqualTo(tableId)
          .findFirstSync();
      if (billHeader == null) {
        throw IsarError("No Bill Found");
      } else {
        final billLines = db.tempBillLines.buildQuery<TempBillLines>(
            sortBy: const [
              SortProperty(property: 'linePosition', sort: Sort.desc),
            ],
            filter: FilterCondition.equalTo(
                property: 'billId', value: billHeader.billId)).findAllSync();

        return Tuple2(billHeader, billLines);
      }
    } on IsarError catch (error, stack) {
      debugPrint(error.message);
      debugPrintStack(stackTrace: stack);
      return const Tuple2(null, []);
    }
  }

  Future<Tuple2<bool, String>> createOrUpdateTempBill(
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
        return updateTempBill(
            header: header,
            lines: lines,
            existingBillHeader: billExists,
            existingBillLines: existingLines);
      } else {
        return createNewTempBill(header: header, lines: lines);
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> createNewTempBill(
      {required TempBillHeaderModel header,
      required List<TempBillLines> lines}) async {
    try {
      //Bill ID

      //TempBillHeaderModel
      final previousBills = db.tempBillHeaderModels.buildQuery(sortBy: [
        const SortProperty(property: 'billId', sort: Sort.desc)
      ]).findFirstSync();

      //PermanentBillHeaderModel
      final previousPermanentBills = db.permanentBillHeaderModels.buildQuery(
          sortBy: [
            const SortProperty(property: 'billId', sort: Sort.desc)
          ]).findFirstSync();

      int billGenId =
          ((previousBills?.billId ?? previousPermanentBills?.billId ?? 0) + 1);

      //Handling the headers
      header.billId = billGenId;
      header.billStartDateTime = DateTime.now().toIso8601String();

      //Bill Lines
      int i = 1;
      for (final item in lines) {
        item.billId = billGenId;
        item.linePosition = i++;
      }

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

  Future<Tuple2<bool, String>> updateTempBill(
      {required TempBillHeaderModel header,
      required List<TempBillLines> lines,
      required TempBillHeaderModel existingBillHeader,
      required List<TempBillLines> existingBillLines}) async {
    try {
      int lastLinePos = existingBillLines.isNotEmpty
          ? (existingBillLines.last.linePosition ?? 1)
          : 1;
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

      for (final line in lines) {
        line.billId = existingBillHeader.billId;
        line.linePosition = ++lastLinePos;
      }

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

  Future<Tuple2<bool, String>> deleteTempBillLine(
      {required String tableId, required String itemId}) async {
    try {
      TempBillHeaderModel? billHeader = db.tempBillHeaderModels
          .filter()
          .tableIdEqualTo(tableId)
          .findFirstSync();
      if (billHeader == null) {
        throw IsarError("No Bill Found");
      } else {
        List<TempBillLines> billLines = db.tempBillLines
            .filter()
            .billIdEqualTo(billHeader.billId)
            .findAllSync();

        final itemIndexInBill =
            billLines.indexWhere((element) => element.itemId == itemId);

        if (itemIndexInBill == -1) {
          throw IsarError("Item Not Found");
        } else {
          TempBillLines item = billLines[itemIndexInBill];
          final servicePercent = Helpers.calculateServicePercent(
              billHeader.totalExTax!, billHeader.serviceChargeAmount!);
          //Header Modification
          billHeader.totalExTax = billHeader.totalExTax! - item.lineTotal!;
          billHeader.totalTaxAmount = billHeader.totalTaxAmount! -
              ((item.quantity! * item.priceWithTax!) - item.lineTotal!);
          if (item.taxType == "G") {
            billHeader.totalGstAmount = billHeader.totalGstAmount! -
                ((item.quantity! * item.priceWithTax!) - item.lineTotal!);
          } else {
            billHeader.totalVatAmount = billHeader.totalVatAmount! -
                ((item.quantity! * item.priceWithTax!) - item.lineTotal!);
          }
          billHeader.totalAmount =
              billHeader.totalExTax! + billHeader.totalTaxAmount!;
          billHeader.serviceChargeAmount =
              (billHeader.totalExTax! * servicePercent) / 100;

          //BillLines Modification
          int linePos = item.linePosition!;
          for (linePos; linePos < billLines.length; linePos++) {
            billLines[linePos].linePosition = linePos;
          }
          billLines.removeAt(itemIndexInBill);

          db.writeTxnSync(() {
            db.tempBillHeaderModels.putSync(billHeader);
            db.tempBillLines.deleteSync(item.id);
            db.tempBillLines.putAllSync(billLines);
          });
          return const Tuple2(true, "Item Deleted");
        }
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  /// @template app
  /// This will work only if the payment is done.
  /// @endtemplate
  Future<Tuple2<bool, String>> createPermanentBill(
      {required String tableId, required int shiftId}) async {
    try {
      final tempBillHeader = db.tempBillHeaderModels
          .filter()
          .tableIdEqualTo(tableId)
          .findFirstSync();
      if (tempBillHeader == null) {
        throw IsarError("Bill Not Found!");
      } else {
        final headerToAdd = tempBillHeader.toMap();
        headerToAdd['shiftId'] = shiftId;
        final existingBill = db.permanentBillHeaderModels
            .filter()
            .billIdEqualTo(tempBillHeader.billId)
            .findFirstSync();
        if (existingBill == null) {
          final tempItemLines = db.tempBillLines
              .filter()
              .billIdEqualTo(tempBillHeader.billId)
              .findAllSync();

          // Creating Permanent Bill Headers and Permament Bill Lines
          db.writeTxnSync(() {
            db.permanentBillHeaderModels
                .putSync(PermanentBillHeaderModel.fromJson(headerToAdd));
            db.permanentBillLinesModels.putAllSync(tempItemLines
                .map((e) => PermanentBillLinesModel.fromJson(e.toMap()))
                .toList());
            db.tempBillHeaderModels.deleteSync(tempBillHeader.id);
            db.tempBillLines
                .deleteAllSync(tempItemLines.map((e) => e.id).toList());
          });
          return const Tuple2(true, "Permanent Bill Saved");
        } else {
          throw IsarError("Bill Already Generated");
        }
      }
    } on IsarError catch (error) {
      debugPrint(error.toString());
      return Tuple2(false, error.message);
    }
  }
}
