import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:zimbapos/models/global_models/discount_bulk_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateBulkDiscScreen extends StatefulWidget {
  const CreateBulkDiscScreen({super.key});

  @override
  State<CreateBulkDiscScreen> createState() => _CreateBulkDiscScreenState();
}

class _CreateBulkDiscScreenState extends State<CreateBulkDiscScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController couponNameController;
  late final TextEditingController couponAmountController;
  late final TextEditingController couponCodeController;
  late final TextEditingController discountPercentController;
  late final TextEditingController maxDiscountController;
  DateTime? validFromDate;
  DateTime? validToDate;
  bool? isMultiUse = false;
  late List<BulkDisc?> bulkDiscountList;

  @override
  void initState() {
    super.initState();
    getBulkDiscList(context);
    couponNameController = TextEditingController();
    couponAmountController = TextEditingController();
    couponCodeController = TextEditingController();
    discountPercentController = TextEditingController();
    maxDiscountController = TextEditingController();
  }

  @override
  void dispose() {
    couponNameController.dispose();
    couponAmountController.dispose();
    couponCodeController.dispose();
    discountPercentController.dispose();
    maxDiscountController.dispose();
    super.dispose();
  }

  //update tax
  createBulkDiscFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.discBulkRepo.createBulkDisc(
      model: BulkDisc(
        couponGenAmount: int.parse(couponAmountController.text),
        couponName: couponNameController.text,
        couponCode: couponCodeController.text,
        validFromDate: validFromDate as DateTime,
        validToDate: validToDate as DateTime,
        discountPercent: int.parse(discountPercentController.text),
        maxDiscount: int.parse(maxDiscountController.text),
        isMultiUse: isMultiUse as bool,
      ),
    );

    EasyLoading.showToast('Bulk Coupon created');
    context.pop();
  }

  //get list
  getBulkDiscList(BuildContext context) async {
    final db = DatabaseCubit.dbFrom(context);
    bulkDiscountList =
        await db.discBulkRepo.getAllBulkDiscs() as List<BulkDisc?>;
  }

  // Pick start date method
  Future pickDate(bool isStart) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2200),
    );

    if (pickedDate != null) {
      setState(() {
        isStart ? validFromDate = pickedDate : validToDate = pickedDate;
      });
    }
  }

  // Validation function
  bool couponNameAlreadyExists(String name) {
    return bulkDiscountList.any((discount) => discount?.couponName == name);
  }

  // Function to generate a random string
  String generateRandomCode() {
    // Get the first three letters of the current month in uppercase
    String monthPrefix = DateFormat('MMM').format(DateTime.now()).toUpperCase();

    // Generate random 5-digit number
    String randomNumbers = Random().nextInt(99999).toString().padLeft(5, '0');

    // Combine the month prefix and random numbers
    return '$monthPrefix$randomNumbers';
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create bulk discount'),
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

                  //switch from is multi use
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Allow multiple use for this coupon?",
                        style: KTextStyles.kTitle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Switch.adaptive(
                          value: isMultiUse as bool,
                          onChanged: (va) {
                            setState(() {
                              isMultiUse = va;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //coupon name
                  PrimaryTextField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Coupon name cannot be empty';
                      }

                      bool exists = couponNameAlreadyExists(value);
                      if (exists) {
                        return 'Coupon name already exists';
                      }

                      return null;
                    },
                    hintText: 'Coupon name',
                    controller: couponNameController,
                    onChanged: (value) {
                      couponNameController.text = value.toUpperCase();
                    },
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Coupon amount',
                    controller: couponAmountController,
                    onChanged: (value) {
                      couponAmountController.text = value.toUpperCase();
                    },
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //coupon code and auto gen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: PrimaryTextField(
                          validator: nullCheckValidator,
                          hintText: 'Coupon code',
                          controller: couponCodeController,
                          onChanged: (value) {
                            couponCodeController.text = value.toUpperCase();
                          },
                        ),
                      ),
                      const SizedBox(width: 18),
                      TextButton(
                        onPressed: () {
                          String generatedString = generateRandomCode();
                          couponCodeController.text = generatedString;
                        },
                        child: const Text("Generate"),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  // date pickers
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //start date column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Start date:",
                                style: KTextStyles.kTitle,
                              ),
                            ),

                            //below is date picker start date
                            InkWell(
                              onTap: () {
                                pickDate(true);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(14.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  border: Border.all(
                                    color: KColors.buttonColor,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: validFromDate == null
                                          ? Text(
                                              'Choose date',
                                              style: KTextStyles.kSubtitle,
                                            )
                                          : Text(
                                              DateFormat('dd/MM/yyyy')
                                                  .format(validFromDate!),
                                              style: KTextStyles.kSubtitle,
                                            ),
                                    ),
                                    const Icon(
                                      Icons.calendar_month,
                                      color: KColors.buttonColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        //end date column
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "End date:",
                                style: KTextStyles.kTitle,
                              ),
                            ),

                            //below is date picker
                            InkWell(
                              onTap: () {
                                pickDate(false);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(14.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  border: Border.all(
                                    color: KColors.buttonColor,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: validToDate == null
                                          ? Text(
                                              "choose date:",
                                              style: KTextStyles.kSubtitle,
                                            )
                                          : Text(
                                              DateFormat('dd/MM/yyyy')
                                                  .format(validToDate!),
                                              style: KTextStyles.kSubtitle,
                                            ),
                                    ),
                                    const Icon(
                                      Icons.calendar_month,
                                      color: KColors.buttonColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: screenSize.height * 0.02),

                  //coupon percent
                  PrimaryTextField(
                    validator: nullCheckValidator,
                    keyboard: TextInputType.number,
                    hintText: 'Discount percent',
                    controller: discountPercentController,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //coupon max disc
                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Max allowed discount',
                    controller: maxDiscountController,
                    keyboard: TextInputType.number,
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
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (validFromDate != null) {
                  createBulkDiscFn(context);
                } else {
                  UtillSnackbar.showSnackBar(
                    context,
                    title: "Alert",
                    body: "Please choose a start date",
                    isSuccess: false,
                  );
                }
              }
            }),
      ),
    );
  }
}
