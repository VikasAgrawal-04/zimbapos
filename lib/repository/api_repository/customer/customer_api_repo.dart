import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import '../../../models/global_models/customer_model.dart';

abstract class CustomerApiRepo {
  Future<Either<Failure, List<CustomerModel>>> getCustomerList();
  Future<Either<Failure, Map<String, dynamic>>> createCustomer(
      CustomerModel item);
  Future<Either<Failure, Map<String, dynamic>>> updateCustomer(
      CustomerModel item);
  Future<Either<Failure, Map<String, dynamic>>> deleteCustomer(
      String customerId);
}
