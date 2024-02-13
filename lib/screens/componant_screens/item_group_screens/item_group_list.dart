import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_state.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/indicators/loading_indicator.dart';
import '../../../widgets/my_alert_widget.dart';

class ItemGroupListScreen extends StatefulWidget {
  const ItemGroupListScreen({super.key});

  @override
  State<ItemGroupListScreen> createState() => _ItemGroupListScreenState();
}

class _ItemGroupListScreenState extends State<ItemGroupListScreen> {
  //

  deleteItemGroup(ItemGroupModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.itemGroupName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.itemGroupReposiory.deleteItemGroup(e.id.toString());
        EasyLoading.showToast('Item group deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  editItemGroupFn({required ItemGroupModel model}) {
    context.push(
      AppScreen.editItemGroupScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                    'Item Groups',
                    style: theme.textTheme.titleLarge,
                  ),

                  //add area button
                  CustomButtonNew(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    shadows: const [],
                    height: 3.5.h,
                    width: 18.w,
                    text: 'Add New Item Group',
                    style: theme.textTheme.titleMedium,
                    onTap: () {
                      context.read<ItemGroupScreenCubit>().clearControllers();
                      context.push(AppScreen.createItemGroupScreen.path);
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

            //form
            BlocBuilder<ItemGroupScreenCubit, ItemGroupScreenState>(
              builder: (context, state) {
                final data = state.itemGroupList;
                if (state.status == Status.loading) {
                  return const MyLoadingIndicator();
                }
                if (data.isEmpty) {
                  return const Center(
                    child: Text('No Item groups'),
                  );
                } else {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 14,
                    ),
                    width: 100.w,
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
                          // const DataColumn(
                          //   label: Text('Role'),
                          // ),
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
                        rows: data
                            .map(
                              (e) => DataRow(
                                cells: [
                                  DataCell(Text(
                                    e.itemGroupName.toString(),
                                    style: KTextStyles.kSubtitle,
                                  )),
                                  DataCell(
                                    Switch.adaptive(
                                      activeColor: theme.primaryColor,
                                      value: e.isActive as bool,
                                      onChanged: (va) {
                                        context
                                            .read<ItemGroupScreenCubit>()
                                            .updateItemGroup(e, val: va);
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
                                            onPressed: () =>
                                                editItemGroupFn(model: e),
                                            icon: Image.asset(
                                                'assets/icons/delete.png'),
                                          ),
                                          SizedBox(width: 2.w),
                                          IconButton(
                                            onPressed: () => context
                                                .read<ItemGroupScreenCubit>()
                                                .deleteItemGroup(
                                                    e.itemGroupId.toString()),
                                            icon: Image.asset(
                                                'assets/icons/delete.png'),
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
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
