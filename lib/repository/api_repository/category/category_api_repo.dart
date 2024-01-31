import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/category_model.dart';

abstract class CategoryApiRepo {
  Future<Either<Failure, List<CategoryModel>>> fetchCategories();
  Future<Either<Failure, Map<String, dynamic>>> createCategory(
      CategoryModel data);
}
