import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/response_models/item_response_model.dart';

abstract class ItemApiRepo {
  Future<Either<Failure, ItemApiResponseModel>> getAllItems();
}
