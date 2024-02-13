import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_state.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/main_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/mian_group_state.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';

import '../../../constants/kcolors.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateItemGroupScreen extends StatefulWidget {
  const CreateItemGroupScreen({super.key});

  @override
  State<CreateItemGroupScreen> createState() => _CreateItemGroupScreenState();
}

class _CreateItemGroupScreenState extends State<CreateItemGroupScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<ItemGroupScreenCubit, ItemGroupScreenState>(
          builder: (context, state) {
            return Column(
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
                      'Create Item Group',
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
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: screenSize.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Item Group Name',
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Expanded(
                              child: PrimaryTextField(
                                validator: nullCheckValidator,
                                // hintText: 'Area name',
                                controller: state.itemGroupNameController,
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenSize.height * 0.02),

                        //dropdown for main group id
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "Main group:",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            //drop down
                            Expanded(
                              child: BlocBuilder<MainGroupScreenCubit,
                                  MainGroupScreenState>(
                                builder: (context, state) {
                                  return CustomDropDown<String>(
                                    // title: "Main group",
                                    items: state.mainGroupList
                                        .map((e) => e.mainGroupName ?? 'error')
                                        .toList(),
                                    itemValues: state.mainGroupList
                                        .map((e) => e.mainGroupId ?? "null")
                                        .toList(),
                                    value: context
                                        .read<ItemGroupScreenCubit>()
                                        .state
                                        .mainGroupId,
                                    hint: "Choose a main group",
                                    onChanged: (value) {
                                      context
                                          .read<ItemGroupScreenCubit>()
                                          .onMainGroupChange(value);
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenSize.height * 0.02),

                        //dropdown for printer
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                "Printer:",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Expanded(
                              child: CustomDropDown<String>(
                                // title: "Printer",
                                hint: "Select a printer",
                                items: const [
                                  '0',
                                  'P1',
                                  'P2',
                                  'P3',
                                  'P4',
                                ],
                                value: state.printerId,
                                onChanged: context
                                    .read<ItemGroupScreenCubit>()
                                    .onPrinterChange,
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
                                  if (state.mainGroupId != null) {
                                    if (state.printerId != null) {
                                      await context
                                          .read<ItemGroupScreenCubit>()
                                          .createItemGroup(
                                            ItemGroupModel(
                                              itemGroupName: state
                                                  .itemGroupNameController.text,
                                              mainGroupId: state.mainGroupId,
                                              printerId: state.printerId,
                                            ),
                                          );
                                      context.pop();
                                    } else {
                                      UtillSnackbar.showSnackBar(
                                        context,
                                        title: "Alert",
                                        body: "Please choose a printer",
                                        isSuccess: false,
                                      );
                                    }
                                  } else {
                                    UtillSnackbar.showSnackBar(
                                      context,
                                      title: "Alert",
                                      body: "Please choose a main group",
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
            );
          },
        ),
      ),
    );
  }
}
