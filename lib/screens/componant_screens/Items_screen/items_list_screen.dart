import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/item_screen_cubits/item_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_screen_cubits/item_state.dart';
import 'package:zimbapos/models/global_models/items_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/response_models/item_response_model.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/indicators/loading_indicator.dart';
import '../../../widgets/my_alert_widget.dart';

class ItemsListScreen extends StatefulWidget {
  const ItemsListScreen({super.key});

  @override
  State<ItemsListScreen> createState() => _ItemsListScreenState();
}

class _ItemsListScreenState extends State<ItemsListScreen> {
  //
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  deleteItem(ItemList e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.itemName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.itemsRepository.deleteItem(e.id);
        EasyLoading.showToast('Item deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateItem(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.itemsRepository.changeActive(id, value);
  }

  editItemFn({required ItemsModel model}) {
    context.push(
      AppScreen.editItemScreen.path,
      extra: model,
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Item list',
            style: KTextStyles.kBlackAppBarHeader,
          ),
          actions: [
            TextButton.icon(
              onPressed: () {
                context.read<ItemScreenCubit>().clearControllers();
                context.push(AppScreen.createItemScreen.path);
              },
              label: const Text('Add item'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: BlocBuilder<ItemScreenCubit, ItemScreenState>(
            builder: (context, state) {
              final list = state.itemList;
              if (state.status == Status.loading) {
                return const MyLoadingIndicator();
              }
              if (list.isEmpty) {
                return const Center(
                  child: Text('No Items'),
                );
              } else {
                return SizedBox(
                  width: 100.w,
                  child: DataTable(
                    headingTextStyle: KTextStyles.kTitle,
                    columns: [
                      const DataColumn(
                        label: Text('Name'),
                      ),
                      const DataColumn(
                        label: Text('Type'),
                      ),
                      const DataColumn(
                        label: Text('Price'),
                      ),
                      const DataColumn(
                        label: Text('Active'),
                      ),
                      DataColumn(
                        label: Padding(
                          padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                          child: const Text('Actions'),
                        ),
                      ),
                    ],
                    rows: list
                        .map(
                          (e) => DataRow(
                            cells: [
                              DataCell(Text(
                                e.itemName.toString(),
                                style: KTextStyles.kSubtitle,
                              )),
                              DataCell(Text(
                                e.foodType.toString(),
                                style: KTextStyles.kSubtitle,
                              )),
                              DataCell(Text(
                                e.rateWithTax.toString(),
                                style: KTextStyles.kSubtitle,
                              )),
                              DataCell(
                                Switch.adaptive(
                                  value: e.isActive,
                                  onChanged: (va) {
                                    context.read<ItemScreenCubit>().updateItem(
                                        ItemsModel(
                                          id: e.id,
                                          itemId: e.itemId,
                                          itemName: e.itemName,
                                          itemGroupId: e.itemGroupId,
                                          foodType: e.foodType,
                                          isAlcohol: e.isAlcohol,
                                          itemRate: e.itemRate,
                                          taxId: e.taxId,
                                          rateWithTax: e.rateWithTax,
                                          isOpenItem: e.isOpenItem,
                                          barcode: e.barcode,
                                          shortcode: e.shortcode,
                                          isWeightItem: e.isWeightItem,
                                          hsnCode: e.hsnCode,
                                          imgLink: e.imgLink,
                                        ),
                                        val: va);
                                  },
                                ),
                              ),
                              DataCell(
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: () => editItemFn(
                                          model: ItemsModel(
                                            id: e.id,
                                            itemId: e.itemId,
                                            itemName: e.itemName,
                                            itemGroupId: e.itemGroupId,
                                            foodType: e.foodType,
                                            isAlcohol: e.isAlcohol,
                                            itemRate: e.itemRate,
                                            taxId: e.taxId,
                                            rateWithTax: e.rateWithTax,
                                            isOpenItem: e.isOpenItem,
                                            barcode: e.barcode,
                                            shortcode: e.shortcode,
                                            isWeightItem: e.isWeightItem,
                                            hsnCode: e.hsnCode,
                                            imgLink: e.imgLink,
                                          ),
                                        ),
                                        icon: const Icon(Icons.edit),
                                      ),
                                      SizedBox(width: 2.w),
                                      IconButton(
                                        onPressed: () => context
                                            .read<ItemScreenCubit>()
                                            .deleteItem(e.itemId.toString()),
                                        icon: const Icon(CupertinoIcons.delete),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
