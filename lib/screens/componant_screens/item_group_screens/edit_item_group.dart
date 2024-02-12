import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_state.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../bloc/screen_cubits/main_group_screen_cubits/main_group_cubit.dart';
import '../../../bloc/screen_cubits/main_group_screen_cubits/mian_group_state.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class EditItemGroupScreen extends StatefulWidget {
  final ItemGroupModel item;
  const EditItemGroupScreen({
    super.key,
    required this.item,
  });

  @override
  State<EditItemGroupScreen> createState() => _EditItemGroupScreenState();
}

class _EditItemGroupScreenState extends State<EditItemGroupScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    context.read<ItemGroupScreenCubit>().fillControllers(widget.item);
  }

  updateItemGroupFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.itemGroupReposiory.updateItemGroup(
      ItemGroupModel(
        id: widget.item.id,
        outletId: widget.item.outletId,
        itemGroupId: widget.item.itemGroupId,
        mainGroupId: widget.item.mainGroupId,
        itemGroupName: widget.item.itemGroupName,
        printerId: widget.item.printerId,
        isActive: widget.item.isActive,
        isDeleted: widget.item.isDeleted,
      ),
    );
    EasyLoading.showToast('Item group updated');
    context.pop();
  }

  //get categories
  Future<List<MainGroupModel?>> getAllMainGroups() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final mainGroupList =
        await datatbaseCubit.mainGroupRepository.getMainGroups();
    // log(rateSets.toString());
    for (var item in mainGroupList) {
      log(item.mainGroupName.toString());
    }
    return mainGroupList;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit item group'),
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
                            .updateItemGroup(
                              ItemGroupModel(
                                itemGroupId: widget.item.itemGroupId,
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
