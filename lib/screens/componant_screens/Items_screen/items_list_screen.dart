import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/items_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/my_alert_widget.dart';

class ItemsListScreen extends StatefulWidget {
  const ItemsListScreen({super.key});

  @override
  State<ItemsListScreen> createState() => _ItemsListScreenState();
}

class _ItemsListScreenState extends State<ItemsListScreen> {
  //
  //
  Stream<List<ItemsModel>> streamForItems() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    // log(datatbaseCubit.rateSetsRepository.getRateSets().toString());
    return datatbaseCubit.itemsRepository.streamItemsList();
  }

  deleteItem(ItemsModel e) {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item list'),
        actions: [
          // IconButton(
          //   onPressed: () => context.push(AppScreen.createAreasScreen.path),
          //   icon: const Icon(Icons.add),
          // ),
          TextButton.icon(
            onPressed: () => context.push(AppScreen.createItemScreen.path),
            label: const Text('Add item'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: StreamBuilder<List<ItemsModel>>(
        stream: streamForItems(),
        builder: (context, snapshot) {
          final list = snapshot.data;
          if (list == null || list.isEmpty) {
            return const Center(
              child: Text('No items available.'),
            );
          }
          return SizedBox(
            width: 100.w,
            child: DataTable(
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
                        DataCell(Text(e.itemName.toString())),
                        DataCell(Text(e.foodType.toString())),
                        DataCell(Text(e.rateWithTax.toString())),
                        DataCell(
                          Switch.adaptive(
                            value: e.isActive as bool,
                            onChanged: (va) => activeDeactivateItem(e.id, va),
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
                                  onPressed: () => editItemFn(model: e),
                                  icon: const Icon(Icons.edit),
                                ),
                                SizedBox(width: 2.w),
                                IconButton(
                                  onPressed: () => deleteItem(e),
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
        },
      ),
    );
  }
}
