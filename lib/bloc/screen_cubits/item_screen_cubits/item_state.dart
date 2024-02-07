import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';

import '../../../models/response_models/item_response_model.dart';

class ItemScreenState extends Equatable {
  final List<ItemList> itemList;
  final Status status;

  const ItemScreenState({
    required this.itemList,
    this.status = Status.initial,
  });

  ItemScreenState copyWith({
    List<ItemList>? itemList,
    Status? status,
  }) {
    return ItemScreenState(
      itemList: itemList ?? this.itemList,
      status: status ?? this.status,
    );
  }

  factory ItemScreenState.initial() {
    return const ItemScreenState(
      itemList: [],
    );
  }

  @override
  List<Object?> get props => [itemList, status];
}
