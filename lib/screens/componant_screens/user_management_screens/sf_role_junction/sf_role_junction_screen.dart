import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/sf_role_junction_cubit/sf_role_junction_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_cubit_cubit.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/widgets/custom_button/back_button.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';
import 'package:zimbapos/widgets/scaffold/custom_appbar.dart';

class SfRoleJnListing extends StatefulWidget {
  const SfRoleJnListing({super.key});

  @override
  State<SfRoleJnListing> createState() => _SfRoleJnListingState();
}

class _SfRoleJnListingState extends State<SfRoleJnListing> {
  @override
  Widget build(BuildContext context) {
    final roleCubit = BlocProvider.of<UserRoleCubit>(context);
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
                  Text('Screen/Function For Roles',
                      style: theme.textTheme.displayMedium),
                  CustomButtonNew(
                      height: 8.h,
                      width: 18.w,
                      text: 'Assign Screen/Function To Role',
                      style: theme.textTheme.displaySmall,
                      onTap: () {
                        context.push(AppScreen.createSfJnScreen.path);
                      }),
                ],
              ),
            ),
            Divider(indent: 2.w, endIndent: 2.w, color: KColors.greyFill),
            Container(
              width: 100.w,
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
              child: Wrap(
                runSpacing: 1.5.h,
                spacing: 2.w,
                alignment: WrapAlignment.spaceBetween,
                children:
                    List.generate(roleCubit.state.userRoles.length, (index) {
                  final role = roleCubit.state.userRoles[index];
                  return InkWell(
                    onTap: () {
                      context
                          .read<SfRoleJunctionCubit>()
                          .getScrnFnAdmin(role.roleId.toString());
                      context.push(AppScreen.editSfJnScreen.path,
                          extra: role.roleName.toString());
                    },
                    child: Container(
                      height: 14.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, .5),
                                blurRadius: 1)
                          ],
                          borderRadius: BorderRadius.circular(12),
                          color: KColors.greyContainer),
                      child: Center(
                        child: Text(role.roleName ?? "",
                            style: theme.textTheme.displayLarge),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
