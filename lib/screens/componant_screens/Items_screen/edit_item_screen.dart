import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/items_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class EditItemsScreen extends StatefulWidget {
  final ItemsModel item;
  const EditItemsScreen({
    super.key,
    required this.item,
  });

  @override
  State<EditItemsScreen> createState() => _EditItemsScreenState();
}

class _EditItemsScreenState extends State<EditItemsScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController itemNameController;
  int? itemGroupId;
  String? foodType;
  bool? isAlcoholic;
  late final TextEditingController itemRateController;
  int? taxId;
  late final TextEditingController itemRateWithTaxController;
  bool? isOpenItem;
  late final TextEditingController barcodeController;
  late final TextEditingController shortcodeController;
  bool? isWeightItem;
  late final TextEditingController hsnController;
  late final TextEditingController imgLinkController;

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

    //init with vals
    itemNameController.text = widget.item.itemName;
    itemRateController.text = widget.item.itemRate.toString();
    itemRateWithTaxController.text = widget.item.rateWithTax.toString();
    barcodeController.text = widget.item.barcode.toString();
    shortcodeController.text = widget.item.shortcode.toString();
    hsnController.text = widget.item.hsnCode.toString();
    imgLinkController.text = widget.item.imgLink.toString();
    itemGroupId = widget.item.itemGroupId;
    foodType = widget.item.foodType;
    isAlcoholic = widget.item.isAlcohol;
    taxId = widget.item.taxId;
    isOpenItem = widget.item.isOpenItem;
    isWeightItem = widget.item.isWeightItem;
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

  updateItemFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.itemsRepository.editItem(
      model: ItemsModel(
        id: widget.item.id,
        itemName: itemNameController.text,
        itemGroupId: itemGroupId,
        foodType: foodType,
        isAlcohol: isAlcoholic,
        itemRate: int.parse(itemRateController.text),
        taxId: taxId,
        rateWithTax: int.parse(itemRateWithTaxController.text),
        isOpenItem: isOpenItem,
        barcode: barcodeController.text,
        shortcode: shortcodeController.text,
        isWeightItem: isWeightItem,
        hsnCode: hsnController.text,
        imgLink: imgLinkController.text,
      ),
    );
    EasyLoading.showToast('Tax updated');
    context.pop();
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
                          value: isAlcoholic as bool,
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
                          value: isOpenItem as bool,
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
                          value: isWeightItem as bool,
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

                  //dropdown for food type
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
                    validator: nullCheckValidator,
                    hintText: 'Item rate',
                    controller: itemRateController,
                    onChanged: (value) {},
                  ),

                  SizedBox(height: screenSize.height * 0.02),

                  //dropdown for tax id

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
                if (foodType != null) {
                  updateItemFn(context);
                  // if (itemGroupId != null) {
                  //   if (taxId != null) {
                  //     createItemFn(context);
                  //   } else {
                  //     UtillSnackbar.showSnackBar(
                  //       context,
                  //       title: "Alert",
                  //       body: "Please choose a tax type",
                  //       isSuccess: false,
                  //     );
                  //   }
                  // } else {
                  //   UtillSnackbar.showSnackBar(
                  //     context,
                  //     title: "Alert",
                  //     body: "Please choose a item group",
                  //     isSuccess: false,
                  //   );
                  // }
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
