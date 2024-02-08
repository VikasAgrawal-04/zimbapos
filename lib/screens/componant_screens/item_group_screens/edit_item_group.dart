import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
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
  late final TextEditingController itemGroupNameController;
  String? mainGroupId;
  String? printerId;

  @override
  void initState() {
    super.initState();
    itemGroupNameController = TextEditingController();

    //init with vals
    itemGroupNameController.text = widget.item.itemGroupName.toString();
    mainGroupId = widget.item.mainGroupId;
    printerId = widget.item.printerId;
  }

  @override
  void dispose() {
    itemGroupNameController.dispose();
    super.dispose();
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
        body: SingleChildScrollView(
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
                    controller: itemGroupNameController,
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
                  SizedBox(
                    // height: 50,
                    width: screenSize.width,
                    child: FutureBuilder<List<MainGroupModel?>>(
                      future: getAllMainGroups(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator.adaptive();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          final rateSets = snapshot.data ?? [];

                          return Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                alignment: Alignment.center,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  border: Border.all(
                                    color: KColors.buttonColor,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: mainGroupId,
                                    isExpanded: true,
                                    hint: const Text("Choose a main group"),
                                    onChanged: (newValue) {
                                      setState(() {
                                        mainGroupId = newValue;
                                      });
                                    },
                                    items: rateSets.map((item) {
                                      return DropdownMenuItem<String>(
                                        value: item?.id.toString(),
                                        child: Text(
                                            item?.mainGroupName ?? 'error'),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //dropdown for food type
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Printer:",
                      style: KTextStyles.kTitle,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      border: Border.all(
                        color: KColors.buttonColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        enableFeedback: true,
                        hint: const Text("Choose a printer"),
                        value: printerId,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (newValue) {
                          setState(() {
                            printerId = newValue;
                          });
                        },
                        items: <String>[
                          '0',
                          'P1',
                          'P2',
                          'P3',
                          'P4',
                          // Add more options as needed
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  // ElevatedButton(
                  //   onPressed: () => updateAreaFn(context, widget.item.id),
                  //   child: const Text('Update area'),
                  // )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
            text: "Save",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (mainGroupId != null) {
                  if (printerId != null) {
                    updateItemGroupFn(context);
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
            }),
      ),
    );
  }
}