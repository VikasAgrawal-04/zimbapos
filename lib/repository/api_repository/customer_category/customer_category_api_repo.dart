import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import '../../../models/global_models/customer_category_model.dart';

abstract class CustomerCategoryApiRepo {
  Future<Either<Failure, List<CustomerCategoryModel>>> getCustomerCategories();
  Future<Either<Failure, Map<String, dynamic>>> createCustomerCategories(
      CustomerCategoryModel item);
}
