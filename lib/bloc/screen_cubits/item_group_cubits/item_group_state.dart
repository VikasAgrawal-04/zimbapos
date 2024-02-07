import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';

class ItemGroupScreenState extends Equatable {
  final List<ItemGroupModel> itemGroupList;
  final Status status;

  const ItemGroupScreenState({
    required this.itemGroupList,
    this.status = Status.initial,
  });

  ItemGroupScreenState copyWith({
    List<ItemGroupModel>? itemGroupList,
    Status? status,
  }) {
    return ItemGroupScreenState(
      itemGroupList: itemGroupList ?? this.itemGroupList,
      status: status ?? this.status,
    );
  }

  factory ItemGroupScreenState.initial() {
    return const ItemGroupScreenState(
      itemGroupList: [],
    );
  }

  @override
  List<Object?> get props => [itemGroupList, status];
}
