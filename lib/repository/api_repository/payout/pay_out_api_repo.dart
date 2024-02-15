import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';

import '../../../models/global_models/pay_out_model.dart';

abstract class PayOutApiRepo {
  Future<Either<Failure, List<PayOutModel>>> fetchPayOutList();
  Future<Either<Failure, Map<String, dynamic>>> createPayOut(
    PayOutModel item,
  );
  // Future<Either<Failure, Map<String, dynamic>>> updateMainGroup(
  //   PayOutModel item,
  // );
  // Future<Either<Failure, Map<String, dynamic>>> deleteMainGroup(
  //   String mainGroupId,
  // );
}
