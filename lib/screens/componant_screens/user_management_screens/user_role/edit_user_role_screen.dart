import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';

import '../../../../bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_cubit_cubit.dart';
import '../../../../bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_state.dart';
import '../../../../constants/kcolors.dart';
import '../../../../helpers/validators.dart';
import '../../../../widgets/custom_button/custom_button.dart';
import '../../../../widgets/scaffold/custom_appbar.dart';
import '../../../../widgets/textfield/primary_textfield.dart';

class EditUserRoleScreen extends StatefulWidget {
  final UserRolesModel item;
  const EditUserRoleScreen({
    super.key,
    required this.item,
  });

  @override
  State<EditUserRoleScreen> createState() => _EditUserRoleScreenState();
}

class _EditUserRoleScreenState extends State<EditUserRoleScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserRoleCubit>().fillControllers(widget.item);
  }

  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: appBar(theme),
      body: BlocBuilder<UserRoleCubit, UserRoleScreenState>(
        builder: (context, state) {
          return SingleChildScrollView(
              child: Column(
            children: [
              //header
              Container(
                width: double.infinity,
                height: screenSize.height * 0.15,
                decoration: BoxDecoration(
                  color: KColors.blackColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Create User Role',
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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

              //form below
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'User Role Name',
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          Expanded(
                            child: PrimaryTextField(
                              validator: nullCheckValidator,
                              // hintText: 'Extra charge percent',
                              controller: state.roleName,
                              onChanged: (value) {},
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenSize.height * 0.3),

                      //buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //cancel
                          CustomButtonNew(
                            width: 68.sp,
                            height: 28.sp,
                            text: "Cancel",
                            color: KColors.blackColor,
                            onTap: () async {
                              //clear controllers and pop
                              context.pop();
                            },
                          ),

                          //save
                          CustomButtonNew(
                            text: "Submit",
                            width: 68.sp,
                            height: 28.sp,
                            color: theme.primaryColor,
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                await context
                                    .read<UserRoleCubit>()
                                    .updateUserRole(
                                      UserRolesModel(
                                        roleName: state.roleName.text,
                                        roleId: widget.item.roleId,
                                      ),
                                    );
                                context.pop();
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ));
        },
      ),
    );
  }
}
