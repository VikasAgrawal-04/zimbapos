import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/cateogory_screen_cubit/category_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/cateogory_screen_cubit/category_screen_state.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/main_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/mian_group_state.dart';

import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('create main group'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: BlocBuilder<MainGroupScreenCubit, MainGroupScreenState>(
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: screenSize.height * 0.04),
                      //Item name
                      PrimaryTextField(
                        validator: nullCheckValidator,
                        hintText: 'Main group name',
                        controller: state.mainGroupNameController,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //dropdown for category id
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Category:",
                          style: KTextStyles.kTitle,
                        ),
                      ),
                      BlocBuilder<CategoryScreenCubit, CategoryScreenState>(
                        builder: (context, state) {
                          return CustomDropDown<String>(
                            title: "Choose a category",
                            items: state.categories
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
                      SizedBox(height: screenSize.height * 0.02),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
        bottomNavigationBar:
            BlocBuilder<MainGroupScreenCubit, MainGroupScreenState>(
          builder: (context, state) {
            return CustomButton(
                text: "Save",
                onPressed: () async {
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
                });
          },
        ),
      ),
    );
  }
}
