import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';

class ItemGroupScreenState extends Equatable {
  final List<ItemGroupModel> itemGroupList;
  final Status status;
  final TextEditingController itemGroupNameController;
  final String? mainGroupId;
  final String? printerId;

  const ItemGroupScreenState(
      {required this.itemGroupList,
      this.status = Status.initial,
      required this.itemGroupNameController,
      this.mainGroupId,
      this.printerId});

  ItemGroupScreenState copyWith({
    List<ItemGroupModel>? itemGroupList,
    Status? status,
    TextEditingController? itemGroupNameController,
    String? mainGroupId,
    String? printerId,
  }) {
    return ItemGroupScreenState(
      itemGroupList: itemGroupList ?? this.itemGroupList,
      status: status ?? this.status,
      itemGroupNameController:
          itemGroupNameController ?? this.itemGroupNameController,
      mainGroupId: mainGroupId ?? this.mainGroupId,
      printerId: printerId ?? this.printerId,
    );
  }

  factory ItemGroupScreenState.initial() {
    return ItemGroupScreenState(
      itemGroupList: const [],
      itemGroupNameController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        itemGroupList,
        status,
        itemGroupNameController,
        mainGroupId,
        printerId,
      ];
}
