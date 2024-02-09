import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_state.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/main_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/mian_group_state.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';

import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create item group'),
        ),
        body: BlocBuilder<ItemGroupScreenCubit, ItemGroupScreenState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: screenSize.height * 0.04),
                      //Item name
                      PrimaryTextField(
                        validator: nullCheckValidator,
                        hintText: 'Item group name',
                        controller: state.itemGroupNameController,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //dropdown for main group id
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Main group:",
                          style: KTextStyles.kTitle,
                        ),
                      ),
                      BlocBuilder<MainGroupScreenCubit, MainGroupScreenState>(
                        builder: (context, state) {
                          return CustomDropDown<String>(
                            title: "Main group",
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
                      SizedBox(height: screenSize.height * 0.02),

                      //dropdown for printer
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Printer:",
                          style: KTextStyles.kTitle,
                        ),
                      ),
                      CustomDropDown<String>(
                        title: "Printer",
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
                      SizedBox(height: screenSize.height * 0.02),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar:
            BlocBuilder<ItemGroupScreenCubit, ItemGroupScreenState>(
          builder: (context, state) {
            return CustomButton(
                text: "Save",
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    if (state.mainGroupId != null) {
                      if (state.printerId != null) {
                        await context
                            .read<ItemGroupScreenCubit>()
                            .createItemGroup(
                              ItemGroupModel(
                                itemGroupName:
                                    state.itemGroupNameController.text,
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
                });
          },
        ),
      ),
    );
  }
}
