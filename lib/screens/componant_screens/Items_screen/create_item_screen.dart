import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_state.dart';
import 'package:zimbapos/bloc/screen_cubits/item_screen_cubits/item_state.dart';
import 'package:zimbapos/bloc/screen_cubits/tax_screen_cubits/tax_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/tax_screen_cubits/tax_state.dart';
import 'package:zimbapos/models/global_models/items_model.dart';

import '../../../bloc/screen_cubits/item_screen_cubits/item_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateItemScreen extends StatefulWidget {
  const CreateItemScreen({super.key});

  @override
  State<CreateItemScreen> createState() => _CreateItemScreenState();
}

class _CreateItemScreenState extends State<CreateItemScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool? enableTF;

  @override
  void initState() {
    super.initState();
    //fetch global var from dbcubit
    enableTF = false;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocBuilder<ItemScreenCubit, ItemScreenState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
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
                        'Create Item',
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
                                style: theme.textTheme.titleLarge,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 24),
                                child: Switch.adaptive(
                                  value: state.isAlcoholic ?? false,
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
                                style: theme.textTheme.titleLarge,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 24),
                                child: Switch.adaptive(
                                  value: state.isOpenItem ?? false,
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
                                style: theme.textTheme.titleLarge,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 24),
                                child: Switch.adaptive(
                                  value: state.isWeightItem ?? false,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Item Name',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: nullCheckValidator,
                                  // hintText: 'Area name',
                                  controller: state.itemNameController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //dropdown for item group id
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Item Group",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: BlocBuilder<ItemGroupScreenCubit,
                                    ItemGroupScreenState>(
                                  builder: (context, state) {
                                    final activeItemGroups = state.itemGroupList
                                        .where((e) => e.isActive ?? false)
                                        .toList();
                                    return CustomDropDown<String>(
                                      // title: "Item group",
                                      items: activeItemGroups
                                          .map(
                                              (e) => e.itemGroupName ?? 'error')
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
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //dropdown for food type
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Food Type",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: CustomDropDown<String>(
                                  // title: "Food type",
                                  hint: "Select food type",
                                  items: const ['V', 'N', 'E'],
                                  value: state.foodType,
                                  onChanged: context
                                      .read<ItemScreenCubit>()
                                      .onFoodTypeChange,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //Item rate
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Item Rate',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: doubleValidator,
                                  // hintText: 'Area name',
                                  controller: state.itemRateController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          // rate with tax
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Item Rate With Tax",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // validator: nullCheckValidator,
                                  validator:
                                      enableTF! ? nullCheckValidator : null,
                                  enable: enableTF,
                                  // hintText: 'Item rate with tax',
                                  controller: state.itemRateWithTaxController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //dropdown for tax id
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Tax Type",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child:
                                    BlocBuilder<TaxScreenCubit, TaxScreenState>(
                                  builder: (context, state) {
                                    final activeTaxes = state.taxList
                                        .where((e) => e.isActive ?? false)
                                        .toList();
                                    return CustomDropDown<String>(
                                      // title: "Tax type",
                                      items: activeTaxes
                                          .map((e) => e.taxName ?? 'error')
                                          .toList(),
                                      itemValues: state.taxList
                                          .map((e) => e.taxId ?? "null")
                                          .toList(),
                                      value: context
                                          .read<ItemScreenCubit>()
                                          .state
                                          .taxId,
                                      hint: "Choose a tax type",
                                      onChanged: (value) {
                                        context
                                            .read<ItemScreenCubit>()
                                            .onTaxIdChange(value);
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Barcode',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // validator: nullCheckValidator,
                                  // hintText: 'Area name',
                                  controller: state.barcodeController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Shortcode',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // validator: nullCheckValidator,
                                  // hintText: 'Area name',
                                  controller: state.shortcodeController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'HSN',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // validator: nullCheckValidator,
                                  // hintText: 'Area name',
                                  controller: state.hsnController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Image Link',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // validator: nullCheckValidator,
                                  // hintText: 'Area name',
                                  controller: state.imgLinkController,
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
                                    if (state.foodType != null) {
                                      if (state.taxId != null) {
                                        if (state.itemGroupId != null) {
                                          // final cubitTee =
                                          //     BlocProvider.of<ItemScreenCubit>(context);
                                          await context
                                              .read<ItemScreenCubit>()
                                              .createItem(
                                                ItemsModel(
                                                  itemName: state
                                                      .itemNameController.text,
                                                  itemGroupId:
                                                      state.itemGroupId,
                                                  foodType: state.foodType,
                                                  isAlcohol:
                                                      state.isAlcoholic ??
                                                          false,
                                                  rateWithTax: enableTF!
                                                      ? double.parse(state
                                                          .itemRateWithTaxController
                                                          .text)
                                                      : 0.0,
                                                  taxId: state.taxId,
                                                  itemRate: double.parse(state
                                                      .itemRateController.text),
                                                  isOpenItem:
                                                      state.isOpenItem ?? false,
                                                  barcode: state
                                                      .barcodeController.text,
                                                  shortcode: state
                                                      .shortcodeController.text,
                                                  isWeightItem:
                                                      state.isWeightItem ??
                                                          false,
                                                  hsnCode:
                                                      state.hsnController.text,
                                                  imgLink: state
                                                      .imgLinkController.text,
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
                                        body: "Please choose a Food type",
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
            ),
          );
        },
      ),
    );
  }
}
