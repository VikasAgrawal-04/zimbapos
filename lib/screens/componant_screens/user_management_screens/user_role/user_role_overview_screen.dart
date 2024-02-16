import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_cubit_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_state.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/widgets/custom_button/back_button.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';
import 'package:zimbapos/widgets/indicators/loading_indicator.dart';
import 'package:zimbapos/widgets/scaffold/custom_appbar.dart';

class UserRoleOverviewScreen extends StatefulWidget {
  const UserRoleOverviewScreen({super.key});

  @override
  State<UserRoleOverviewScreen> createState() => _UserRoleOverviewScreenState();
}

class _UserRoleOverviewScreenState extends State<UserRoleOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: appBar(theme),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backBtn(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'User Roles',
                    style: theme.textTheme.displayMedium,
                  ),
                  CustomButtonNew(
                    height: 8.h,
                    width: 18.w,
                    text: 'Create User Role',
                    onTap: () {
                      context.push(AppScreen.createUserRoleScreen.path);
                    },
                  ),
                ],
              ),
            ),
            Divider(indent: 2.w, endIndent: 2.w, color: KColors.greyFill),
            BlocBuilder<UserRoleCubit, UserRoleScreenState>(
                builder: (((context, state) {
              final list = state.userRoles;
              if (state.status == Status.loading) {
                return const MyLoadingIndicator();
              } else if (list.isEmpty) {
                return const Center(
                  child: Text('No User Roles'),
                );
              } else {
                return Container(
                  width: 100.w,
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: DataTable(
                        border: TableBorder.all(
                          color: KColors.blackColor,
                          width: 1,
                        ),
                        headingRowColor:
                            MaterialStatePropertyAll(KColors.blackColor),
                        columns: [
                          DataColumn(
                              label: Text("Role Name",
                                  style: theme.textTheme.headlineMedium)),
                          DataColumn(
                            label: Text(
                              'Active',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: Text(
                                'Actions',
                                style: theme.textTheme.headlineMedium,
                              ),
                            ),
                          ),
                        ],
                        rows: List.generate(list.length, (index) {
                          final userRole = list[index];
                          return DataRow(cells: [
                            DataCell(Text(
                              userRole.roleName.toString(),
                              style: theme.textTheme.headlineSmall,
                            )),
                            DataCell(
                              Switch.adaptive(
                                  activeColor: theme.primaryColor,
                                  value: userRole.isActive as bool,
                                  onChanged: (va) {}),
                            ),
                            DataCell(
                              Container(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon:
                                          Image.asset('assets/icons/edit.png'),
                                    ),
                                    SizedBox(width: 2.w),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                          'assets/icons/delete.png'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]);
                        })),
                  ),
                );
              }
            })))
          ],
        ),
      ),
    );
  }
}
