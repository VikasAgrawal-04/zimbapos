import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/item_screen_cubits/item_state.dart';
import 'package:zimbapos/models/global_models/items_model.dart';

import '../../../bloc/screen_cubits/item_group_cubits/item_group_cubit.dart';
import '../../../bloc/screen_cubits/item_group_cubits/item_group_state.dart';
import '../../../bloc/screen_cubits/item_screen_cubits/item_cubit.dart';
import '../../../bloc/screen_cubits/tax_screen_cubits/tax_cubit.dart';
import '../../../bloc/screen_cubits/tax_screen_cubits/tax_state.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';
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

  bool? enableTF;

  @override
  void initState() {
    super.initState();
    enableTF = false;
    context.read<ItemScreenCubit>().fillControllers(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit item'),
        ),
        body: BlocBuilder<ItemScreenCubit, ItemScreenState>(
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
                              value: state.isAlcoholic as bool,
                              onChanged: (va) {
                                context
                                    .read<ItemScreenCubit>()
                                    .onIsAlcoholicChange(va);
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
                              value: state.isOpenItem as bool,
                              onChanged: (va) {
                                context
                                    .read<ItemScreenCubit>()
                                    .onIsOpenItemChange(va);
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
                              value: state.isWeightItem as bool,
                              onChanged: (va) {
                                context
                                    .read<ItemScreenCubit>()
                                    .onIsWeightItemChange(va);
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
                        controller: state.itemNameController,
                        onChanged: (value) {},
                      ),

                      SizedBox(height: screenSize.height * 0.02),

                      //dropdown for item group id
                      BlocBuilder<ItemGroupScreenCubit, ItemGroupScreenState>(
                        builder: (context, state) {
                          return CustomDropDown<String>(
                            title: "Item group",
                            items: state.itemGroupList
                                .map((e) => e.itemGroupName ?? 'error')
                                .toList(),
                            itemValues: state.itemGroupList
                                .map((e) => e.itemGroupId ?? "null")
                                .toList(),
                            value: context
                                .read<ItemScreenCubit>()
                                .state
                                .itemGroupId,
                            hint: "Choose a item group",
                            onChanged: (value) {
                              context
                                  .read<ItemScreenCubit>()
                                  .onItemgroupChange(value);
                            },
                          );
                        },
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //dropdown for food type
                      CustomDropDown<String>(
                        title: "Food type",
                        hint: "Select food type",
                        items: const ['V', 'N', 'E'],
                        value: state.foodType,
                        onChanged:
                            context.read<ItemScreenCubit>().onFoodTypeChange,
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //Item rate
                      PrimaryTextField(
                        // validator: enableTF ? nullCheckValidator : null,
                        // enable: enableTF,
                        validator: nullCheckValidator,
                        hintText: 'Item rate',
                        controller: state.itemRateController,
                        onChanged: (value) {},
                      ),

                      SizedBox(height: screenSize.height * 0.02),

                      // rate with tax
                      PrimaryTextField(
                        // validator: nullCheckValidator,
                        validator: enableTF! ? nullCheckValidator : null,
                        enable: enableTF,
                        hintText: 'Item rate with tax',
                        controller: state.itemRateWithTaxController,
                        onChanged: (value) {},
                      ),

                      //dropdown for tax id
                      BlocBuilder<TaxScreenCubit, TaxScreenState>(
                        builder: (context, state) {
                          return CustomDropDown<String>(
                            title: "Tax type",
                            items: state.taxList
                                .map((e) => e.taxName ?? 'error')
                                .toList(),
                            itemValues: state.taxList
                                .map((e) => e.taxId ?? "null")
                                .toList(),
                            value: context.read<ItemScreenCubit>().state.taxId,
                            hint: "Choose a tax type",
                            onChanged: (value) {
                              context
                                  .read<ItemScreenCubit>()
                                  .onTaxIdChange(value);
                            },
                          );
                        },
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      PrimaryTextField(
                        // validator: nullCheckValidator,
                        hintText: 'Barcode',
                        controller: state.barcodeController,
                        onChanged: (value) {},
                      ),

                      SizedBox(height: screenSize.height * 0.02),

                      PrimaryTextField(
                        // validator: nullCheckValidator,
                        hintText: 'Shortcode',
                        controller: state.shortcodeController,
                        onChanged: (value) {},
                      ),

                      SizedBox(height: screenSize.height * 0.02),

                      PrimaryTextField(
                        // validator: nullCheckValidator,
                        hintText: 'HSN code',
                        controller: state.hsnController,
                        onChanged: (value) {},
                      ),

                      SizedBox(height: screenSize.height * 0.02),

                      PrimaryTextField(
                        // validator: nullCheckValidator,
                        hintText: 'Image link',
                        controller: state.imgLinkController,
                        onChanged: (value) {},
                      ),

                      SizedBox(height: screenSize.height * 0.02),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<ItemScreenCubit, ItemScreenState>(
          builder: (context, state) {
            return CustomButton(
              text: "Save",
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (state.foodType != null) {
                    if (state.taxId != null) {
                      if (state.itemGroupId != null) {
                        await context.read<ItemScreenCubit>().updateItem(
                              ItemsModel(
                                itemId: widget.item.itemId,
                                itemName: state.itemNameController.text,
                                itemGroupId: state.itemGroupId,
                                foodType: state.foodType,
                                isAlcohol: state.isAlcoholic,
                                rateWithTax: enableTF!
                                    ? double.parse(
                                        state.itemRateWithTaxController.text)
                                    : 0.0,
                                taxId: state.taxId,
                                itemRate:
                                    double.parse(state.itemRateController.text),
                                isOpenItem: state.isOpenItem,
                                barcode: state.barcodeController.text,
                                shortcode: state.shortcodeController.text,
                                isWeightItem: state.isWeightItem,
                                hsnCode: state.hsnController.text,
                                imgLink: state.imgLinkController.text,
                              ),
                            );

                        context.pop();
                      } else {
                        UtillSnackbar.showSnackBar(
                          context,
                          title: "Alert",
                          body: "Please choose a item group",
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
                  } else {
                    UtillSnackbar.showSnackBar(
                      context,
                      title: "Alert",
                      body: "Please choose a tax type",
                      isSuccess: false,
                    );
                  }
                }
              },
            );
          },
        ),
      ),
    );
  }
}
