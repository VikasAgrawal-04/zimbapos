import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/cateogory_screen_cubit/category_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/cateogory_screen_cubit/category_screen_state.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/widgets/indicators/loading_indicator.dart';

import '../../../constants/ktextstyles.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  editCategoryFn({required CategoryModel model}) {
    context.push(
      AppScreen.editCategory.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Category List',
            style: KTextStyles.kBlackAppBarHeader,
          ),
          actions: [
            TextButton.icon(
              onPressed: () {
                context.read<CategoryScreenCubit>().clearControllers();
                context.push(AppScreen.createCategory.path);
              },
              label: const Text('Add Category'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: BlocBuilder<CategoryScreenCubit, CategoryScreenState>(
            builder: ((context, state) {
          final data = state.categories;
          if (state.status == Status.loading) {
            return const MyLoadingIndicator();
          }
          if (data.isEmpty) {
            return const Center(
              child: Text('No Categories'),
            );
          } else {
            return SizedBox(
              width: 100.w,
              child: DataTable(
                headingTextStyle: KTextStyles.kTitle,
                columns: const [
                  DataColumn(
                    label: Text('Name'),
                  ),
                  DataColumn(
                    label: Text('Active'),
                  ),
                  DataColumn(
                    label: Text('Actions'),
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
                              onChanged: (va) {
                                context
                                    .read<CategoryScreenCubit>()
                                    .updateCategory(e, val: va);
                              },
                            ),
                          ),
                          DataCell(
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () => editCategoryFn(model: e),
                                  icon: const Icon(Icons.edit),
                                ),
                                SizedBox(width: 2.w),
                                IconButton(
                                  onPressed: () => context
                                      .read<CategoryScreenCubit>()
                                      .deleteCategory(e.categoryid.toString()),
                                  icon: const Icon(CupertinoIcons.delete),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            );
          }
        })));
  }
}
