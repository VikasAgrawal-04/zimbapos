import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/item_screen_cubits/item_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_screen_cubits/item_state.dart';
import 'package:zimbapos/models/global_models/items_model.dart';

import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/response_models/item_response_model.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/indicators/loading_indicator.dart';
import '../../../widgets/my_alert_widget.dart';

class ItemsListScreen extends StatefulWidget {
  const ItemsListScreen({super.key});

  @override
  State<ItemsListScreen> createState() => _ItemsListScreenState();
}

class _ItemsListScreenState extends State<ItemsListScreen> {
  //
  // late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    // _searchController = TextEditingController();
  }

  deleteItem(ItemList e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.itemName}'?",
      //this is for ok button
      () {
        // final dbCubit = DatabaseCubit.dbFrom(context);
        // dbCubit.itemsRepository.deleteItemApi(e.id);
        EasyLoading.showToast('Item deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  editItemFn({required ItemsModel model}) {
    context.push(
      AppScreen.editItemScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<ItemScreenCubit, ItemScreenState>(
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
              return Column(
                children: [
                  //row for back button
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Image.asset(
                          "assets/icons/back.png",
                          height: 5.h,
                        ),
                      ),
                    ],
                  ),

                  //page title
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18,
                      left: 24,
                      right: 24,
                      bottom: 8,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Items',
                          style: theme.textTheme.titleLarge,
                        ),

                        //add area button
                        CustomButtonNew(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          shadows: const [],
                          height: 3.5.h,
                          width: 18.w,
                          text: 'Add New Item',
                          style: theme.textTheme.titleMedium,
                          onTap: () {
                            context.read<ItemScreenCubit>().clearControllers();
                            context.push(AppScreen.createItemScreen.path);
                          },
                        ),
                      ],
                    ),
                  ),

                  //divider
                  PreferredSize(
                    preferredSize: Size.fromHeight(1.h),
                    child: Divider(
                      color: KColors.greyFill,
                      thickness: 1.0,
                      endIndent: 1.w,
                      indent: 1.w,
                    ),
                  ),

                  //items list
                  Container(
                    width: 100.w,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 14,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: DataTable(
                        border: TableBorder.all(
                          color: KColors.blackColor,
                          width: 1,
                        ),
                        headingRowColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                          return KColors.blackColor;
                        }),
                        headingTextStyle: KTextStyles.kTitle,
                        columns: [
                          DataColumn(
                            label: Text(
                              'Name',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Type',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Price',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Active',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Padding(
                              padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                              child: Text(
                                'Actions',
                                style: theme.textTheme.headlineMedium,
                              ),
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
                                        context
                                            .read<ItemScreenCubit>()
                                            .updateItem(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                                .deleteItem(
                                                    e.itemId.toString()),
                                            icon: const Icon(
                                                CupertinoIcons.delete),
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
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
