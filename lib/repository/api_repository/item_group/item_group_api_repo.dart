import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';

abstract class ItemGroupApiRepo {
  Future<Either<Failure, List<ItemGroupModel>>> fetchItemGroup(String id);
  Future<Either<Failure, List<ItemGroupModel>>> getItemGroupList();
  Future<Either<Failure, Map<String, dynamic>>> createItemGroup(
      ItemGroupModel item);
  Future<Either<Failure, Map<String, dynamic>>> updateItemGroup(
      ItemGroupModel item);
  Future<Either<Failure, Map<String, dynamic>>> deleteItemGroup(
      String itemGroupId);
}
