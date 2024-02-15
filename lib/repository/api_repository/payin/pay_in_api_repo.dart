import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/pay_in_model.dart';

abstract class PayInApiRepo {
  Future<Either<Failure, List<PayInModel>>> fetchPayInList();
  Future<Either<Failure, Map<String, dynamic>>> createPayIn(
    PayInModel item,
  );
  // Future<Either<Failure, Map<String, dynamic>>> updateMainGroup(
  //   PayInModel item,
  // );
  // Future<Either<Failure, Map<String, dynamic>>> deleteMainGroup(
  //   String mainGroupId,
  // );
}
