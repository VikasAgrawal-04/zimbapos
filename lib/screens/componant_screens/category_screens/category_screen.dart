import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

import '../../../constants/ktextstyles.dart';
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

  deleteCategory(CategoryModel e) {
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

  activeDeactivateCategory(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.categoryRepository.changeActive(id, value);
  }

  editCategoryFn({required CategoryModel model}) {
    context.push(
      AppScreen.editCategory.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Categories',
            style: KTextStyles.kBlackAppBarHeader,
          ),
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
                              e.categoryName.toString(),
                              style: KTextStyles.kSubtitle,
                            )),
                            DataCell(
                              Switch.adaptive(
                                value: e.isActive as bool,
                                onChanged: (va) =>
                                    activeDeactivateCategory(e.id, va),
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
                                      onPressed: () => editCategoryFn(model: e),
                                      icon: const Icon(Icons.edit),
                                    ),
                                    SizedBox(width: 2.w),
                                    IconButton(
                                      onPressed: () => deleteCategory(e),
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
