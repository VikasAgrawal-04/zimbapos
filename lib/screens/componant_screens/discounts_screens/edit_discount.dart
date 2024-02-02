import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:zimbapos/models/global_models/discount_single_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class UpdateSingleDiscScreen extends StatefulWidget {
  final DiscountModel item;
  const UpdateSingleDiscScreen({
    super.key,
    required this.item,
  });

  @override
  State<UpdateSingleDiscScreen> createState() => _UpdateSingleDiscScreenState();
}

class _UpdateSingleDiscScreenState extends State<UpdateSingleDiscScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController couponNameController;
  late final TextEditingController couponCodeController;
  late final TextEditingController discountPercentController;
  late final TextEditingController maxDiscountController;
  DateTime? validFromDate;
  DateTime? validToDate;
  bool? isMultiUse;
  late List<DiscountModel?> discountList;

  @override
  void initState() {
    super.initState();
    getDiscountList(context);
    couponNameController = TextEditingController();
    couponCodeController = TextEditingController();
    discountPercentController = TextEditingController();
    maxDiscountController = TextEditingController();

    couponNameController.text = widget.item.couponName.toString();
    couponCodeController.text = widget.item.couponCode.toString();
    discountPercentController.text = widget.item.discountPercent.toString();
    maxDiscountController.text = widget.item.maxDiscount.toString();
    validFromDate = widget.item.validFromDate;
    validToDate = widget.item.validToDate;
    isMultiUse = widget.item.isMultiUse;
  }

  @override
  void dispose() {
    couponNameController.dispose();
    couponCodeController.dispose();
    discountPercentController.dispose();
    maxDiscountController.dispose();
    super.dispose();
  }

  //update tax
  updateDiscountFn(BuildContext context, int id) {
    final db = DatabaseCubit.dbFrom(context);
    String couponNumberPart = couponCodeController.text
        .substring(couponCodeController.text.length - 6);
    db.discountRepository.editDiscount(
      model: DiscountModel(
        id: widget.item.id,
        couponName: couponNameController.text,
        couponCode: couponNameController.text == widget.item.couponName
            ? couponCodeController.text
            : "${couponNameController.text}$couponNumberPart",
        validFromDate: validFromDate as DateTime,
        validToDate: validToDate as DateTime,
        discountPercent: int.parse(discountPercentController.text),
        maxDiscount: int.parse(maxDiscountController.text),
        isMultiUse: isMultiUse as bool,
      ),
    );

    EasyLoading.showToast('Coupon Updated');
    context.pop();
  }

  // Pick start date method
  Future pickDate(bool isStart) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: isStart ? validFromDate : validToDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2200),
    );

    if (pickedDate != null) {
      setState(() {
        isStart ? validFromDate = pickedDate : validToDate = pickedDate;
      });
    }
  }

  //get list
  getDiscountList(BuildContext context) async {
    final db = DatabaseCubit.dbFrom(context);
    discountList = await db.discountRepository.getDiscountList();
  }

  // Validation function
  bool couponNameAlreadyExists(String name) {
    return discountList.any((discount) => discount?.couponName == name);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit coupon'),
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

                  //switch from is alcoholic
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

                      if (couponNameController.text != widget.item.couponName) {
                        bool exists = couponNameAlreadyExists(value);
                        if (exists) {
                          return 'Coupon name already exists';
                        }
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
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    enable: false,
                    validator: nullCheckValidator,
                    keyboard: TextInputType.number,
                    hintText: 'Coupon code',
                    controller: couponCodeController,
                    onChanged: (value) {
                      couponCodeController.text = value.toUpperCase();
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
        bottomNavigationBar: CustomButton(
            text: "Save",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (validFromDate != null) {
                  updateDiscountFn(context, widget.item.id);
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
