import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';

import '../../../models/global_models/pay_mod_master_model.dart';

abstract class PayModMasterApiRepo {
  Future<Either<Failure, List<PayModMasterModel>>> fetchPayModMasterList();
  Future<Either<Failure, Map<String, dynamic>>> createPayModMaster(
      PayModMasterModel item);
  Future<Either<Failure, Map<String, dynamic>>> updatePayModMaster(
      PayModMasterModel item);
  Future<Either<Failure, Map<String, dynamic>>> deletePayModMaster(
      String payCode);
}
