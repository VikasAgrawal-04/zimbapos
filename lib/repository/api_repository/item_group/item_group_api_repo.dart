import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';

abstract class ItemGroupApiRepo {
  Future<Either<Failure, List<ItemGroupModel>>> fetchItemGroup(String id);
}
