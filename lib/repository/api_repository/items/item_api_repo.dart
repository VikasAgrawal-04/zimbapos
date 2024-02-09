import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/response_models/item_response_model.dart';

import '../../../models/global_models/items_model.dart';

abstract class ItemApiRepo {
  Future<Either<Failure, ItemApiResponseModel>> getAllItems();
  Future<Either<Failure, ItemApiResponseModel>> getAllItemsById(String id);
  Future<Either<Failure, Map<String, dynamic>>> createItem(ItemsModel item);
  Future<Either<Failure, Map<String, dynamic>>> updateItem(ItemsModel item);
  Future<Either<Failure, Map<String, dynamic>>> deleteItem(String itemId);
}
