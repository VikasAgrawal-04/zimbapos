import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

import '../../../widgets/my_alert_widget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  Stream<List<CategoryModel>> categoryStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.categoryRepository.streamCategory();
  }

  // toggleFn(int id, bool value) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.categoryRepository.changeActive(id, value);
  // }

  // deleteFn(int id) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.categoryRepository.deleteCategory(id);
  // }

  deleteWorker(CategoryModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.categoryName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.categoryRepository.deleteCategory(e.id);
        EasyLoading.showToast('Category deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateWorkers(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.categoryRepository.changeActive(id, value);
  }

  editWorkerFn({required CategoryModel model}) {
    context.push(
      AppScreen.editCategory.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        actions: [
          // IconButton(
          //   onPressed: () => context.push(AppScreen.createCategory.path),
          //   icon: const Icon(Icons.add),
          // ),
          TextButton.icon(
            onPressed: () => context.push(AppScreen.createCategory.path),
            label: const Text('Add Category'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: StreamBuilder<List<CategoryModel>>(
        stream: categoryStream(),
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
                          DataCell(Text(e.categoryName.toString())),
                          DataCell(
                            Switch.adaptive(
                              value: e.isActive as bool,
                              onChanged: (va) =>
                                  activeDeactivateWorkers(e.id, va),
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
                                    onPressed: () => editWorkerFn(model: e),
                                    icon: const Icon(Icons.edit),
                                  ),
                                  SizedBox(width: 2.w),
                                  IconButton(
                                    onPressed: () => deleteWorker(e),
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
            // ListView.builder(
            //     itemCount: data.length,
            //     itemBuilder: (context, index) {
            //       final rawData = data[index];
            //       return ListTile(
            //         title: Text(rawData.categoryName ?? "Category Name"),
            //         subtitle: Text((data[index].isActive ?? false)
            //             ? 'Active'
            //             : "InActive"),
            //         trailing: Row(
            //           mainAxisSize: MainAxisSize.min,
            //           children: [
            //             //edit
            //             IconButton(
            //               onPressed: () => context.push(
            //                 AppScreen.editCategory.path,
            //                 //passing data to edit screen
            //                 extra: data[index],
            //               ),
            //               icon: const Icon(
            //                 Icons.edit,
            //                 size: 30,
            //               ),
            //             ),
            //             SizedBox(width: 2.w),
            //             //delete
            //             IconButton(
            //               onPressed: () => deleteFn(data[index].id),
            //               icon: const Icon(
            //                 Icons.delete,
            //                 size: 30,
            //               ),
            //             ),
            //             SizedBox(width: 2.w),
            //             Switch.adaptive(
            //               value: data[index].isActive ?? false,
            //               onChanged: (value) => toggleFn(data[index].id, value),
            //             ),
            //           ],
            //         ),
            //       );
            //     });
          }
        },
      ),
    );
  }
}
