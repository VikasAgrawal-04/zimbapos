import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/temp_bill_header_model.dart';
import 'package:zimbapos/models/global_models/temp_bill_lines_model.dart';

class BillRepository {
  Isar db;
  BillRepository(this.db);

  // Future<Tuple2<bool, String>> createOrUpdateBill(
  //     {required TempBillHeaderModel header,
  //     required List<TempBillLines> lines}) async {
  //   try {
  //     final billExists = await db.tempBillHeaderModels
  //         .filter()
  //         .billIdEqualTo(header.billId)
  //         .findFirst();
  //     if (billExists != null) {
  //       return updateNewBill(header: header, lines: lines);
  //     } else {
  //       return createNewBill(header: header, lines: lines);
  //     }
  //   } on IsarError catch (error) {
  //     debugPrint(error.message);
  //     return Tuple2(false, error.message);
  //   }
  // }

  // Future<Tuple2<bool, String>> createNewBill(
  //     {required TempBillHeaderModel header,
  //     required List<TempBillLines> lines}) async {
  //   try {} on IsarError catch (error) {
  //     debugPrint(error.message);
  //     return Tuple2(false, error.message);
  //   }
  // }

  // Future<Tuple2<bool, String>> updateNewBill(
  //     {required TempBillHeaderModel header,
  //     required List<TempBillLines> lines}) async {
  //   try {} on IsarError catch (error) {
  //     debugPrint(error.message);
  //     return Tuple2(false, error.message);
  //   }
  // }
}
