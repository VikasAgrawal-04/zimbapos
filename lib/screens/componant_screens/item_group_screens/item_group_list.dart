import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/ktextstyles.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/my_alert_widget.dart';

class ItemGroupListScreen extends StatefulWidget {
  const ItemGroupListScreen({super.key});

  @override
  State<ItemGroupListScreen> createState() => _ItemGroupListScreenState();
}

class _ItemGroupListScreenState extends State<ItemGroupListScreen> {
  //
  Stream<List<ItemGroupModel>> itemGroupStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.itemGroupReposiory.streamItemGroups();
  }

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

  activeDeactivateItemGroup(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.itemGroupReposiory.changeActive(id, value);
  }

  editItemGroupFn({required ItemGroupModel model}) {
    context.push(
      AppScreen.editItemGroupScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Item group list',
            style: KTextStyles.kBlackAppBarHeader,
          ),
          actions: [
            // IconButton(
            //   onPressed: () => context.push(AppScreen.createCategory.path),
            //   icon: const Icon(Icons.add),
            // ),
            TextButton.icon(
              onPressed: () =>
                  context.push(AppScreen.createItemGroupScreen.path),
              label: const Text('Add item group'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: StreamBuilder<List<ItemGroupModel>>(
          stream: itemGroupStream(),
          builder: (context, snapshot) {
            final data = snapshot.data;
            if (data == null || data.isEmpty) {
              return const Center(
                child: Text('No Categories'),
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
                    // const DataColumn(
                    //   label: Text('Role'),
                    // ),
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
                                value: e.isActive as bool,
                                onChanged: (va) =>
                                    activeDeactivateItemGroup(e.id, va),
                              ),
                            ),
                            DataCell(
                              Container(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () =>
                                          editItemGroupFn(model: e),
                                      icon: const Icon(Icons.edit),
                                    ),
                                    SizedBox(width: 2.w),
                                    IconButton(
                                      onPressed: () => deleteItemGroup(e),
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
    );
  }
}
