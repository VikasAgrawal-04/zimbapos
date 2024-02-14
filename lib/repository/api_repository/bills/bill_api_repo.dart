import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/request_models/temp_bill_request_model.dart';

abstract class BillApiRepo {
  Future<Either<Failure, Map<String, dynamic>>> createKot(
      TempBillRequestModel data);

  Future<Either<Failure, TempBillRequestModel>> getTempBill(String tableId);

  Future<Either<Failure, Map<String, dynamic>>> deleteKotItem(
      String tableId, String itemId);

  Future<Either<Failure, Map<String, dynamic>>> createFinalBill(String tableId);
}
