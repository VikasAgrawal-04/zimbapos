import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:intl/intl.dart';
import 'package:zimbapos/models/global_models/discount_single_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateSingleDiscScreen extends StatefulWidget {
  const CreateSingleDiscScreen({super.key});

  @override
  State<CreateSingleDiscScreen> createState() => _CreateSingleDiscScreenState();
}

class _CreateSingleDiscScreenState extends State<CreateSingleDiscScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController couponNameController;
  late final TextEditingController couponCodeController;
  late final TextEditingController couponAmountController;
  late final TextEditingController discountPercentController;
  late final TextEditingController maxDiscountController;
  DateTime? validFromDate;
  DateTime? validToDate;
  bool? isMultiUse = false;
  String? couponMode = 'S';
  late List<DiscountModel?> discountList;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getDiscountList(context);
    couponNameController = TextEditingController();
    couponCodeController = TextEditingController();
    couponAmountController = TextEditingController();
    discountPercentController = TextEditingController();
    maxDiscountController = TextEditingController();
  }

  @override
  void dispose() {
    couponNameController.dispose();
    couponCodeController.dispose();
    couponAmountController.dispose();
    discountPercentController.dispose();
    maxDiscountController.dispose();
    super.dispose();
  }

  //create discount
  createDiscountFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);

    if (couponMode == 'B') {
      int couponAmount = int.parse(couponAmountController.text);

      for (int i = 0; i < couponAmount; i++) {
        setState(() {
          isLoading = true;
        });
        String modifiedCouponName = (i == 0)
            ? couponNameController.text
            : '${couponNameController.text}-$i';

        // // Update the coupon name in the controller
        // couponNameController.text = modifiedCouponName;

        String generatedCode = generateRandomCode();

        db.discountRepository.createDiscount(
          model: DiscountModel(
            couponName: modifiedCouponName,
            couponCode: generatedCode,
            validFromDate: validFromDate as DateTime,
            validToDate: validToDate as DateTime,
            discountPercent: int.parse(discountPercentController.text),
            maxDiscount: int.parse(maxDiscountController.text),
            isMultiUse: isMultiUse as bool,
          ),
        );
      }
      setState(() {
        isLoading = false;
      });
    } else {
      // Single coupon creation for other modes
      String generatedCode = generateRandomCode();
      db.discountRepository.createDiscount(
        model: DiscountModel(
          couponName: couponNameController.text,
          couponCode: couponCodeController.text.isEmpty
              ? generatedCode
              : "${couponNameController.text}${couponCodeController.text.padLeft(6, '0')}",
          validFromDate: validFromDate as DateTime,
          validToDate: validToDate as DateTime,
          discountPercent: int.parse(discountPercentController.text),
          maxDiscount: int.parse(maxDiscountController.text),
          isMultiUse: isMultiUse as bool,
        ),
      );
    }

    EasyLoading.showToast('Coupons created');
    Navigator.pop(context);
  }

  //get list
  getDiscountList(BuildContext context) async {
    final db = DatabaseCubit.dbFrom(context);
    discountList =
        await db.discountRepository.getDiscountList();
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
    return discountList.any((discount) => discount?.couponName == name);
  }

  // Function to generate a random string
  String generateRandomCode() {
    // Get the first three letters of the current month in uppercase
    // String monthPrefix = DateFormat('MMM').format(DateTime.now()).toUpperCase();
    String namePrefix = couponNameController.text;

    // Generate random 6-digit number
    String randomNumbers = _generateRandom8DigitNumber();

    // Combine the prefix and random numbers
    return '$namePrefix$randomNumbers';
  }

  String _generateRandom8DigitNumber() {
    // Maximum value for an 6-digit number
    int maxValue = 999999;

    // Generate a random 8-digit number
    String randomNumbers =
        Random().nextInt(maxValue).toString().padLeft(6, '0');

    // Check if the generated number is already in use
    while (discountList.any((coupon) => coupon!.couponCode == randomNumbers)) {
      randomNumbers = Random().nextInt(maxValue).toString().padLeft(6, '0');
    }

    return randomNumbers;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create coupon'),
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

                  //switch for is multi use
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

                  //dropdown for coupon mode
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
                        hint: const Text("Choose a coupon mode"),
                        value: couponMode,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (newValue) {
                          setState(() {
                            couponMode = newValue;
                          });
                        },
                        items: <String>[
                          'S',
                          'B',
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

                  //coupon code and auto gen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: PrimaryTextField(
                          // validator: nullCheckValidator,
                          enable: couponMode == 'S' ? true : false,
                          validator: couponMode == 'S'
                              ? (value) {
                                  //to check if the entered value contains only numeric characters
                                  if (!RegExp(r'^[0-9]+$')
                                      .hasMatch(value.toString())) {
                                    return 'Must contain only numbers';
                                  }
                                  // Check if the generated number is already in use
                                  if (discountList.any((coupon) =>
                                      coupon!.couponCode ==
                                      "${couponNameController.text}${couponCodeController.text.padLeft(6, '0')}")) {
                                    return "This coupon code is in use";
                                  }

                                  return null;
                                }
                              : null,
                          keyboard: TextInputType.number,
                          hintText: 'Coupon code',
                          controller: couponCodeController,
                          onChanged: (value) {
                            couponCodeController.text = value.toUpperCase();
                          },
                        ),
                      ),
                      const SizedBox(width: 18),
                      TextButton(
                        onPressed: couponMode == 'S'
                            ? () {
                                String generatedString = generateRandomCode();
                                couponCodeController.text = generatedString;
                              }
                            : null,
                        child: const Text("Generate"),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  PrimaryTextField(
                    enable: couponMode == 'B' ? true : false,
                    validator: couponMode == 'B' ? integerValidator : null,
                    hintText: 'Coupon amount',
                    controller: couponAmountController,
                    onChanged: (value) {
                      couponAmountController.text = value.toUpperCase();
                    },
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  // date pickers
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    validator: integerValidator,
                    keyboard: TextInputType.number,
                    hintText: 'Discount percent',
                    controller: discountPercentController,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //coupon max disc
                  PrimaryTextField(
                    validator: integerValidator,
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
        bottomNavigationBar: isLoading
            ? const CircularProgressIndicator.adaptive()
            : CustomButton(
                text: "Save",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (validFromDate != null) {
                      createDiscountFn(context);
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
