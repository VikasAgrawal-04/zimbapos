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

import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../widgets/custom_button/custom_button.dart';

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
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/icons/menu.png', height: 3.h),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/power_off.png', height: 3.h)),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.h),
          child: Divider(
            color: KColors.blackColor,
            thickness: 1.0,
            endIndent: 1.w,
            indent: 1.w,
          ),
        ),
      ),
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
                  'Categories',
                  style: theme.textTheme.titleLarge,
                ),

                //add area button
                CustomButtonNew(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  shadows: const [],
                  height: 3.5.h,
                  width: 18.w,
                  text: 'Add New Category',
                  style: theme.textTheme.titleMedium,
                  onTap: () {
                    context.read<CategoryScreenCubit>().clearControllers();
                    context.push(AppScreen.createCategory.path);
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

          //category table
          BlocBuilder<CategoryScreenCubit, CategoryScreenState>(
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
                return Container(
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
                        return KColors
                            .blackColor; // Set black color for the heading row
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
                            'Active',
                            style: theme.textTheme.headlineMedium,
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Actions',
                            style: theme.textTheme.headlineMedium,
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
                                    activeColor: theme.primaryColor,
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
                                        onPressed: () =>
                                            editCategoryFn(model: e),
                                        icon: Image.asset(
                                            'assets/icons/delete.png'),
                                      ),
                                      SizedBox(width: 2.w),
                                      IconButton(
                                        onPressed: () => context
                                            .read<CategoryScreenCubit>()
                                            .deleteCategory(
                                                e.categoryid.toString()),
                                        icon: Image.asset(
                                            'assets/icons/delete.png'),
                                      )
                                    ],
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
            }),
          ),
        ],
      ),
    );
  }
}
