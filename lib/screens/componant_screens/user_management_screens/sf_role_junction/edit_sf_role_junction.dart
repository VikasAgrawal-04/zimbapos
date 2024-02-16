import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/screen_function_cubit/screen_function_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/sf_role_junction_cubit/sf_role_junction_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/sf_role_junction_cubit/sf_role_junction_state.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/models/global_models/screen_function_mapping_model.dart';
import 'package:zimbapos/widgets/custom_button/back_button.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';
import 'package:zimbapos/widgets/scaffold/custom_appbar.dart';

class EditSfRoleJunction extends StatelessWidget {
  final String roleName;
  const EditSfRoleJunction({required this.roleName, super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final sfCubit = BlocProvider.of<ScreenFunctionCubit>(context);
    return Scaffold(
      appBar: appBar(theme),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backBtn(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
              child: Column(
                children: [
                  Text('Edit Screen/Function For Roles',
                      style: theme.textTheme.displayMedium),
                  Divider(color: KColors.greyFill),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Role Name",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 1.5.h),
                          decoration: BoxDecoration(
                              color: KColors.greyFill,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                roleName,
                                style: theme.textTheme.titleLarge,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 14.sp,
                                color: KColors.blackColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Expanded(
                        child: Text(
                          "Screen/Function Name",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      BlocBuilder<SfRoleJunctionCubit, SfRoleJunctionState>(
                        builder: (context, state) {
                          return Expanded(
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.sfRoleList.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  final sf = sfCubit.state.sfList[index];
                                  final canEdit =
                                      state.sfRoleList[index].canChange;

                                  final canView =
                                      state.sfRoleList[index].canView;

                                  return Container(
                                    decoration: BoxDecoration(
                                        color: KColors.greyFill,
                                        borderRadius: BorderRadius.circular(5)),
                                    margin: EdgeInsets.only(bottom: 1.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 1.h),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                              "${sf.scrnFnName} (${sf.type?.convertString()})",
                                              style: theme
                                                  .textTheme.headlineSmall),
                                        ),
                                        Expanded(
                                            child: Column(
                                          children: [
                                            Text('Can View',
                                                style:
                                                    theme.textTheme.bodyMedium),
                                            Switch.adaptive(
                                              activeColor: theme.primaryColor,
                                              value: canView as bool,
                                              onChanged: (val) {
                                                context
                                                    .read<SfRoleJunctionCubit>()
                                                    .onEditViewChange(
                                                        val, index);
                                              },
                                            )
                                          ],
                                        )),
                                        Expanded(
                                            child: Column(
                                          children: [
                                            Text('Can Edit',
                                                style:
                                                    theme.textTheme.bodyMedium),
                                            Switch.adaptive(
                                              activeColor: theme.primaryColor,
                                              value: canEdit as bool,
                                              onChanged: (val) {
                                                context
                                                    .read<SfRoleJunctionCubit>()
                                                    .onEditEditChange(
                                                        val, index);
                                              },
                                            )
                                          ],
                                        ))
                                      ],
                                    ),
                                  );
                                }),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  CustomButtonNew(
                    onTap: context.read<SfRoleJunctionCubit>().onEditSubit,
                    text: "Submit",
                    height: 6.h,
                    style: theme.textTheme.displayMedium,
                    width: 50.w,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
