import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/main_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/mian_group_state.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/global_models/main_group_model.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/indicators/loading_indicator.dart';
import '../../../widgets/my_alert_widget.dart';

class MainGroupListScreen extends StatefulWidget {
  const MainGroupListScreen({super.key});

  @override
  State<MainGroupListScreen> createState() => _MainGroupListScreenState();
}

class _MainGroupListScreenState extends State<MainGroupListScreen> {
  //
  Stream<List<MainGroupModel>> mainGroupStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.mainGroupRepository.streamMainGroups();
  }

  deleteMainGroup(MainGroupModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.mainGroupName}'?",
      //this is for ok button
      () {
        context
            .read<MainGroupScreenCubit>()
            .deleteMainGroup(e.mainGroupId.toString());
        // final dbCubit = DatabaseCubit.dbFrom(context);
        // dbCubit.mainGroupRepository.deleteMainGroup(e.id.toString());
        // EasyLoading.showToast('Main group deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateMainGroup(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.mainGroupRepository.changeActive(id, value);
  }

  editMainGroupFn({required MainGroupModel model}) {
    context.push(
      AppScreen.editMainGroupScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Main Groups',
                      style: theme.textTheme.titleLarge,
                    ),

                    //add area button
                    CustomButtonNew(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      shadows: const [],
                      height: 8.h,
                      width: 18.w,
                      text: 'Add New Main Group',
                      style: theme.textTheme.titleMedium,
                      onTap: () {
                        context.read<MainGroupScreenCubit>().clearControllers();
                        context.push(AppScreen.createMainGroupScreen.path);
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

              //table
              BlocBuilder<MainGroupScreenCubit, MainGroupScreenState>(
                builder: (context, state) {
                  final list = state.mainGroupList;
                  if (state.status == Status.loading) {
                    return const MyLoadingIndicator();
                  }
                  if (list.isEmpty) {
                    return const Center(
                      child: Text('No Main Groups'),
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
                                      e.mainGroupName.toString(),
                                      style: KTextStyles.kSubtitle,
                                    )),
                                    DataCell(
                                      Switch.adaptive(
                                        activeColor: theme.primaryColor,
                                        value: e.isActive as bool,
                                        onChanged: (va) {
                                          context
                                              .read<MainGroupScreenCubit>()
                                              .updateMainGroup(e, val: va);
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
                                                  editMainGroupFn(model: e),
                                              icon: Image.asset(
                                                  'assets/icons/edit.png'),
                                            ),
                                            SizedBox(width: 2.w),
                                            IconButton(
                                              onPressed: () =>
                                                  deleteMainGroup(e),
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
      ),
    );
  }
}
