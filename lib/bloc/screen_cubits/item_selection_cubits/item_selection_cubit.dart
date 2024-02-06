import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_state.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/models/request_models/temp_bill_request_model.dart';
import 'package:zimbapos/models/response_models/item_response_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

enum OnClick { add, subtract }

class ItemSelectionCubit extends Cubit<ItemSelectionState> {
  final ApiRepo _repo = ApiRepoImpl();
  late List<CategoryModel> categories;
  late List<MainGroupModel> mainGroups;
  late List<ItemGroupModel> itemGroups;
  late List<ItemList> items;
  late List<ItemList> itemsById;
  late List<ItemList> filteredItems;
  late List<ItemList> addedItems;
  ItemSelectionCubit()
      : categories = [],
        mainGroups = [],
        itemGroups = [],
        items = [],
        itemsById = [],
        filteredItems = [],
        addedItems = [],
        super(ItemSelectionState.initial()) {
    init();
  }

  @override
  Future<void> close() {
    categories.clear();
    return super.close();
  }

  Future<void> init() async {
    EasyLoading.show(maskType: EasyLoadingMaskType.black);
    await Future.wait([getCategories(), getMainGroups(), getAllItems()]);
    EasyLoading.dismiss();
  }

  Future<void> getCategories() async {
    try {
      final data = await _repo.fetchCategories();
      data.fold((failure) {
        debugPrint(failure.toString());
        categories = <CategoryModel>[];
        emit(state.copyWith(categories: categories));
      }, (success) {
        categories = success;
        emit(state.copyWith(categories: categories));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> getMainGroups() async {
    try {
      final data = await _repo.fetchMainGroup();
      data.fold((failure) {
        debugPrint(failure.toString());
        mainGroups = <MainGroupModel>[];
        emit(state.copyWith(mainGroups: mainGroups));
      }, (success) {
        mainGroups = success;
        emit(state.copyWith(mainGroups: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> getItemGroup(String id) async {
    emit(state.copyWith(itemGroups: []));
    try {
      final data = await _repo.fetchItemGroup(id);
      data.fold((failure) {
        debugPrint(failure.toString());
        itemGroups = <ItemGroupModel>[];
        emit(state.copyWith(itemGroups: itemGroups));
      }, (success) {
        itemGroups = success;
        emit(state.copyWith(itemGroups: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> getAllItems() async {
    try {
      final data = await _repo.getAllItems();
      data.fold((failure) {
        items = <ItemList>[];
        debugPrint(failure.toString());
      }, (success) {
        items = success.data;
        filteredItems = success.data;
        emit(state.copyWith(items: items, filteredItems: filteredItems));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> getAllItemsById(String id) async {
    try {
      final data = await _repo.getAllItemsById(id);
      data.fold((failure) {
        itemsById = <ItemList>[];
        debugPrint(failure.toString());
      }, (success) {
        itemsById = success.data;
        filteredItems = success.data;
        emit(
            state.copyWith(itemsById: itemsById, filteredItems: filteredItems));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> getTempBill(String tableId) async {
    try {
      final data = await _repo.getTempBill(tableId);
      data.fold((failure) {
        debugPrint("Failure in Get Temp Bill ${failure.toString()}");
      }, (success) {
        debugPrint("Success In Getting Temp Bill ${success.toJson()}");
        emit(state.copyWith(tableBill: success));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<void> placeKot(String tableId) async {
    try {
      //Function Value Calculation

      //Headers
      final totalExTax = state.addedItems.fold(
          0.0,
          (previousValue, element) =>
              previousValue + (element.itemRate * element.quantity));

      final totalAmount = state.addedItems.fold(
          0.0,
          (previousValue, element) =>
              previousValue + (element.quantity * element.rateWithTax));

      final totalTaxAmount = totalAmount - totalExTax;
      final serviceChargeAmount = totalExTax * 5 / 100;
      final totalGstAmount =
          state.addedItems.fold(0.0, (previousValue, element) {
        if (element.tax.taxType == "G") {
          return previousValue +
              ((element.quantity * element.rateWithTax) -
                  (element.quantity * element.itemRate));
        } else {
          return previousValue;
        }
      });
      final totalVatAmount =
          state.addedItems.fold(0.0, (previousValue, element) {
        if (element.tax.taxType == "V") {
          return previousValue +
              ((element.quantity * element.rateWithTax) -
                  (element.quantity * element.itemRate));
        } else {
          return previousValue;
        }
      });

      //Lines
      List<BillLine> billLines = [];
      for (final item in state.addedItems) {
        billLines.add(BillLine(
            itemId: item.itemId,
            itemName: item.itemName,
            quantity: item.quantity,
            priceExTax: item.itemRate,
            taxId: item.taxId,
            taxType: item.tax.taxType,
            taxPercent: item.tax.taxPercent,
            priceWithTax: item.rateWithTax,
            lineTotal: (item.quantity * item.itemRate),
            itemGroupId: item.itemGroupId,
            mainGroupId: item.mainGroupDetails.mainGroupId));
      }

      const customerId = "123132";
      const waiterId = "123123";
      const roundOffAmount = 0.0;
      const pax = 5;

      //API Call
      final success = await _repo.createKot(TempBillRequestModel(
          billHeader: BillHeader(
              tableId: tableId,
              totalExTax: totalExTax,
              totalTaxAmount: totalTaxAmount,
              serviceChargeAmount: serviceChargeAmount,
              totalGstAmount: totalGstAmount,
              totalVatAmount: totalVatAmount,
              roundOffAmount: roundOffAmount,
              totalAmount: totalAmount,
              customerId: customerId,
              pax: pax,
              waiterId: waiterId,
              isBillPrinted: false),
          billLines: billLines));
      success.fold((failure) {
        debugPrint("Failure ${failure.toString()}");
      }, (success) {
        getTempBill(tableId);
        debugPrint("Success $success");
        EasyLoading.showSuccess(success['data'].toString());
        addedItems = [];
        emit(state.copyWith(addedItems: []));
      });
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  //Functions For Item Screen

  void changeTile(int index) {
    emit(state.copyWith(selectedTile: index));
  }

  void searchItems(String query) {
    List<ItemList> allItems = List.from(items);
    if (query.isEmpty) {
      allItems.clear();
      allItems.addAll(items);
    } else {
      allItems.clear();
      for (final item in items) {
        if (item.itemName.toLowerCase().contains(query.toLowerCase())) {
          allItems.add(item);
        }
      }
    }
    filteredItems = allItems;
    emit(state.copyWith(filteredItems: filteredItems));
  }

  void onItemClick({required OnClick action, required ItemList item}) {
    switch (action) {
      case OnClick.add:
        return addOrIncProduct(item);
      case OnClick.subtract:
        return removeOrDecProduct(item);
    }
  }

  void addOrIncProduct(ItemList item) {
    List<ItemList> updatedAddedItems = List.from(addedItems);

    int index = updatedAddedItems
        .indexWhere((element) => element.itemId == item.itemId);
    if (index != -1) {
      // If item exists, update the quantity
      updatedAddedItems[index] = updatedAddedItems[index]
          .copyWith(quantity: updatedAddedItems[index].quantity + 1);
    } else {
      // If item doesn't exist, add it with quantity 1
      updatedAddedItems.add(item.copyWith(quantity: 1));
    }
    addedItems = updatedAddedItems;
    emit(state.copyWith(addedItems: addedItems));
  }

  void removeOrDecProduct(ItemList item) {
    List<ItemList> updatedAddedItems = List.from(addedItems);

    int index = updatedAddedItems
        .indexWhere((element) => element.itemId == item.itemId);

    if (index != -1) {
      if (updatedAddedItems[index].quantity > 1) {
        // If item exists, update the quantity
        updatedAddedItems[index] = updatedAddedItems[index]
            .copyWith(quantity: updatedAddedItems[index].quantity - 1);
      } else {
        // If item doesn't exist, remove it from the list 1
        updatedAddedItems.removeAt(index);
      }
    }
    addedItems = updatedAddedItems;
    emit(state.copyWith(addedItems: addedItems));
  }
}
