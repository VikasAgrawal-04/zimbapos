import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/constants/ktextstyles.dart';
import 'package:zimbapos/models/global_models/items_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../bloc/screen_cubits/item_screen_cubits/item_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../helpers/validators.dart';
import '../../../models/global_models/item_group_model.dart';
import '../../../models/global_models/tax_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateItemScreen extends StatefulWidget {
  const CreateItemScreen({super.key});

  @override
  State<CreateItemScreen> createState() => _CreateItemScreenState();
}

class _CreateItemScreenState extends State<CreateItemScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController itemNameController;
  String? itemGroupId;
  String? foodType = 'V';
  bool isAlcoholic = false;
  late final TextEditingController itemRateController;
  String? taxId;
  late final TextEditingController itemRateWithTaxController;
  bool isOpenItem = false;
  late final TextEditingController barcodeController;
  late final TextEditingController shortcodeController;
  bool isWeightItem = false;
  late final TextEditingController hsnController;
  late final TextEditingController imgLinkController;

  bool enableTF = false;

  @override
  void initState() {
    super.initState();
    itemNameController = TextEditingController();
    itemRateController = TextEditingController();
    itemRateWithTaxController = TextEditingController();
    barcodeController = TextEditingController();
    shortcodeController = TextEditingController();
    hsnController = TextEditingController();
    imgLinkController = TextEditingController();
  }

  @override
  void dispose() {
    itemNameController.dispose();
    itemRateController.dispose();
    itemRateWithTaxController.dispose();
    barcodeController.dispose();
    shortcodeController.dispose();
    hsnController.dispose();
    imgLinkController.dispose();
    super.dispose();
  }

  //
  //get taxes
  Future<List<TaxModel?>> getAllTaxes() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final taxList = await datatbaseCubit.taxesRepository.getAllTaxes();
    // log(rateSets.toString());
    for (var tax in taxList) {
      log(tax!.taxName.toString());
    }
    return taxList;
  }

  //get categories
  Future<List<ItemGroupModel?>> getAllItemGroups() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final itemGroupList =
        await datatbaseCubit.itemGroupReposiory.getItemGroups();
    // log(rateSets.toString());
    for (var item in itemGroupList) {
      log(item.itemGroupName.toString());
      log(item.id.toString());
    }
    return itemGroupList;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create item'),
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
                  SizedBox(height: screenSize.height * 0.02),
                  //switch from is alcoholic
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Is this item alcoholic?",
                        style: KTextStyles.kTitle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Switch.adaptive(
                          value: isAlcoholic,
                          onChanged: (va) {
                            setState(() {
                              isAlcoholic = va;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //switch for is open item
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Is this item open?",
                        style: KTextStyles.kTitle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Switch.adaptive(
                          value: isOpenItem,
                          onChanged: (va) {
                            setState(() {
                              isOpenItem = va;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //switch for is weight item
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Is this item sold in weight?",
                        style: KTextStyles.kTitle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Switch.adaptive(
                          value: isWeightItem,
                          onChanged: (va) {
                            setState(() {
                              isWeightItem = va;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  //Item name
                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Item name',
                    controller: itemNameController,
                    onChanged: (value) {},
                  ),

                  SizedBox(height: screenSize.height * 0.02),

                  //dropdown for item group id
                  SizedBox(
                    // height: 50,
                    width: screenSize.width,
                    child: FutureBuilder<List<ItemGroupModel?>>(
                      future: getAllItemGroups(),
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Item group:",
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
                                    value: itemGroupId,
                                    isExpanded: true,
                                    hint: const Text("Choose a item group"),
                                    onChanged: (newValue) {
                                      setState(() {
                                        itemGroupId = newValue;
                                      });
                                    },
                                    items: rateSets.map((item) {
                                      return DropdownMenuItem<String>(
                                        value: item?.id.toString(),
                                        child: Text(
                                            item?.itemGroupName ?? 'error'),
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
                      "Food type:",
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
                        hint: const Text("Choose food type"),
                        value: foodType,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (newValue) {
                          setState(() {
                            foodType = newValue;
                          });
                        },
                        items: <String>[
                          'V',
                          'N',
                          'E'
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

                  //Item rate
                  PrimaryTextField(
                    validator: enableTF ? nullCheckValidator : null,
                    enable: enableTF,
                    // validator: nullCheckValidator,
                    hintText: 'Item rate',
                    controller: itemRateController,
                    onChanged: (value) {},
                  ),

                  SizedBox(height: screenSize.height * 0.02),

                  //dropdown for tax id
                  SizedBox(
                    // height: 50,
                    width: screenSize.width,
                    child: FutureBuilder<List<TaxModel?>>(
                      future: getAllTaxes(),
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Tax type:",
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
                                    value: taxId,
                                    isExpanded: true,
                                    hint: const Text("Choose a tax"),
                                    onChanged: (newValue) {
                                      setState(() {
                                        taxId = newValue;
                                      });
                                    },
                                    items: rateSets.map((tax) {
                                      return DropdownMenuItem<String>(
                                        value: tax?.taxId,
                                        child: Text(tax?.taxName ?? 'error'),
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

                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Item rate with tax',
                    controller: itemRateWithTaxController,
                    onChanged: (value) {},
                  ),

                  SizedBox(height: screenSize.height * 0.02),

                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Barcode',
                    controller: barcodeController,
                    onChanged: (value) {},
                  ),

                  SizedBox(height: screenSize.height * 0.02),

                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Shortcode',
                    controller: shortcodeController,
                    onChanged: (value) {},
                  ),

                  SizedBox(height: screenSize.height * 0.02),

                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'HSN code',
                    controller: hsnController,
                    onChanged: (value) {},
                  ),

                  SizedBox(height: screenSize.height * 0.02),

                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Image link',
                    controller: imgLinkController,
                    onChanged: (value) {},
                  ),

                  SizedBox(height: screenSize.height * 0.02),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
            text: "Save",
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                if (foodType != null) {
                  if (taxId != null) {
                    await context.read<ItemScreenCubit>().createItem(
                          ItemsModel(
                            itemName: itemNameController.text,
                            itemGroupId: itemGroupId,
                            foodType: foodType,
                            isAlcohol: isAlcoholic,
                            itemRate: enableTF
                                ? double.parse(itemRateController.text)
                                : null,
                            taxId: taxId,
                            rateWithTax:
                                double.parse(itemRateWithTaxController.text),
                            isOpenItem: isOpenItem,
                            barcode: barcodeController.text,
                            shortcode: shortcodeController.text,
                            isWeightItem: isWeightItem,
                            hsnCode: hsnController.text,
                            imgLink: imgLinkController.text,
                          ),
                        );

                    context.pop();
                  } else {
                    UtillSnackbar.showSnackBar(
                      context,
                      title: "Alert",
                      body: "Please choose a tax type",
                      isSuccess: false,
                    );
                  }
                } else {
                  UtillSnackbar.showSnackBar(
                    context,
                    title: "Alert",
                    body: "Please choose a tax type",
                    isSuccess: false,
                  );
                }
              }
            }),
      ),
    );
  }
}
