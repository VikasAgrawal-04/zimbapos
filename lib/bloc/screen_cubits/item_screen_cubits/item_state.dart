import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';

import '../../../models/response_models/item_response_model.dart';

class ItemScreenState extends Equatable {
  final List<ItemList> itemList;
  final TextEditingController searchController;
  final List<ItemList> filteredItems;
  final Status status;
  final TextEditingController itemRateWithTaxController;
  final TextEditingController itemNameController;
  final TextEditingController itemRateController;
  final TextEditingController barcodeController;
  final TextEditingController shortcodeController;
  final TextEditingController hsnController;
  final TextEditingController imgLinkController;
  final String? itemGroupId;
  final String? foodType;
  final bool? isAlcoholic;
  final String? taxId;
  final bool? isOpenItem;
  final bool? isWeightItem;

  const ItemScreenState({
    required this.itemList,
    required this.filteredItems,
    required this.searchController,
    this.status = Status.initial,
    required this.itemRateWithTaxController,
    required this.itemNameController,
    required this.itemRateController,
    required this.barcodeController,
    required this.shortcodeController,
    required this.hsnController,
    required this.imgLinkController,
    this.itemGroupId,
    this.foodType = "V",
    this.isAlcoholic,
    this.taxId,
    this.isOpenItem,
    this.isWeightItem,
  });

  ItemScreenState copyWith({
    List<ItemList>? itemList,
    TextEditingController? searchController,
    List<ItemList>? filteredItems,
    Status? status,
    TextEditingController? itemRateWithTaxController,
    TextEditingController? itemNameController,
    TextEditingController? itemRateController,
    TextEditingController? barcodeController,
    TextEditingController? shortcodeController,
    TextEditingController? hsnController,
    TextEditingController? imgLinkController,
    String? itemGroupId,
    String? foodType,
    bool? isAlcoholic,
    String? taxId,
    bool? isOpenItem,
    bool? isWeightItem,
  }) {
    return ItemScreenState(
      itemList: itemList ?? this.itemList,
      searchController: searchController ?? this.searchController,
      filteredItems: filteredItems ?? this.filteredItems,
      status: status ?? this.status,
      itemNameController: itemNameController ?? this.itemNameController,
      itemRateController: itemRateController ?? this.itemRateController,
      itemRateWithTaxController:
          itemRateWithTaxController ?? this.itemRateWithTaxController,
      barcodeController: barcodeController ?? this.barcodeController,
      shortcodeController: shortcodeController ?? this.shortcodeController,
      hsnController: hsnController ?? this.hsnController,
      imgLinkController: imgLinkController ?? this.imgLinkController,
      itemGroupId: itemGroupId ?? this.itemGroupId,
      taxId: taxId ?? this.taxId,
      foodType: foodType ?? this.foodType,
      isAlcoholic: isAlcoholic ?? this.isAlcoholic,
      isOpenItem: isOpenItem ?? this.isOpenItem,
      isWeightItem: isWeightItem ?? this.isWeightItem,
    );
  }

  factory ItemScreenState.initial() {
    return ItemScreenState(
      itemList: const [],
      filteredItems: const [],
      searchController: TextEditingController(),
      itemRateWithTaxController: TextEditingController(),
      itemNameController: TextEditingController(),
      itemRateController: TextEditingController(),
      barcodeController: TextEditingController(),
      shortcodeController: TextEditingController(),
      hsnController: TextEditingController(),
      imgLinkController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        itemList,
        filteredItems,
        searchController,
        status,
        itemNameController,
        itemRateController,
        itemRateWithTaxController,
        barcodeController,
        shortcodeController,
        hsnController,
        imgLinkController,
        taxId,
        itemGroupId,
        foodType,
        isAlcoholic,
        isOpenItem,
        isWeightItem,
      ];
}
