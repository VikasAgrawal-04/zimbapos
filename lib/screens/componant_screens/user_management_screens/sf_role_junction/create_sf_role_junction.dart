import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/screen_function_cubit/screen_function_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/sf_role_junction_cubit/sf_role_junction_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/sf_role_junction_cubit/sf_role_junction_state.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_cubit_cubit.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/models/global_models/screen_function_mapping_model.dart';
import 'package:zimbapos/widgets/custom_button/back_button.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';
import 'package:zimbapos/widgets/dropdown/custom_dropdown.dart';
import 'package:zimbapos/widgets/scaffold/custom_appbar.dart';

class CreateSfRoleJn extends StatelessWidget {
  const CreateSfRoleJn({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final roleCubit = BlocProvider.of<UserRoleCubit>(context);
    final sfCubit = BlocProvider.of<ScreenFunctionCubit>(context);
    BlocProvider.of<SfRoleJunctionCubit>(context)
        .fillValues(sfCubit.state.sfList);
    return Scaffold(
      appBar: appBar(theme),
      body: BlocBuilder<SfRoleJunctionCubit, SfRoleJunctionState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              backBtn(context),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                child: Column(
                  children: [
                    Text('Screen/Function For Roles',
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
                          child: CustomDropDown(
                            items: roleCubit.state.userRoles
                                .map((e) => e.roleName)
                                .toList(),
                            itemValues: roleCubit.state.userRoles
                                .map((e) => e.roleId)
                                .toList(),
                            value: state.roleId,
                            hint: "Choose A Role",
                            onChanged: context
                                .read<SfRoleJunctionCubit>()
                                .onRoleChange,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.5.h),
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
                        Expanded(
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: (state.canEdit).length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                final canView = state.canView[index];
                                final canEdit = state.canEdit[index];

                                final sf = sfCubit.state.sfList[index];

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
                                            style:
                                                theme.textTheme.headlineSmall),
                                      ),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          Text('Can View',
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          Switch.adaptive(
                                            activeColor: theme.primaryColor,
                                            value: canView,
                                            onChanged: (val) {
                                              context
                                                  .read<SfRoleJunctionCubit>()
                                                  .onCanViewChange(val, index);
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
                                            value: canEdit,
                                            onChanged: (val) {
                                              context
                                                  .read<SfRoleJunctionCubit>()
                                                  .onCanEditChange(val, index);
                                            },
                                          )
                                        ],
                                      ))
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    CustomButtonNew(
                      onTap: context.read<SfRoleJunctionCubit>().onSubmit,
                      text: "Submit",
                      height: 6.h,
                      style: theme.textTheme.displayMedium,
                      width: 50.w,
                    )
                  ],
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}
