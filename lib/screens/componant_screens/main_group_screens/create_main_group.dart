import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/cateogory_screen_cubit/category_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/cateogory_screen_cubit/category_screen_state.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/main_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/mian_group_state.dart';

import '../../../constants/kcolors.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateMainGroupScreen extends StatefulWidget {
  const CreateMainGroupScreen({super.key});

  @override
  State<CreateMainGroupScreen> createState() => _CreateMainGroupScreenState();
}

class _CreateMainGroupScreenState extends State<CreateMainGroupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<MainGroupScreenCubit, MainGroupScreenState>(
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
                        'Create Main Group',
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

                  //form
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 12),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: screenSize.height * 0.04),
                          //area name
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Main Group Name',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: nullCheckValidator,
                                  // hintText: 'Area name',
                                  controller: state.mainGroupNameController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //dropdown for category id
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  "Category:",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              //drop down
                              Expanded(
                                child: BlocBuilder<CategoryScreenCubit,
                                    CategoryScreenState>(
                                  builder: (context, state) {
                                    final activeCategories = state.categories
                                        .where((e) => e.isActive ?? false)
                                        .toList();
                                    return CustomDropDown<String>(
                                      // title: "Choose a category",
                                      items: activeCategories
                                          .map((category) =>
                                              category.categoryName ?? 'error')
                                          .toList(),
                                      itemValues: state.categories
                                          .map((e) => e.categoryid ?? "null")
                                          .toList(),
                                      value: context
                                          .read<MainGroupScreenCubit>()
                                          .state
                                          .catId,
                                      hint: "Choose a category",
                                      onChanged: (value) {
                                        context
                                            .read<MainGroupScreenCubit>()
                                            .onCategoryChange(value);
                                      },
                                    );
                                  },
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
                                    if (state.catId != null) {
                                      await context
                                          .read<MainGroupScreenCubit>()
                                          .createMainGroup();

                                      context.pop();
                                    } else {
                                      UtillSnackbar.showSnackBar(
                                        context,
                                        title: "Alert",
                                        body: "Please choose a category",
                                        isSuccess: false,
                                      );
                                    }
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
              ),
            );
          },
        ),
      ),
    );
  }
}
