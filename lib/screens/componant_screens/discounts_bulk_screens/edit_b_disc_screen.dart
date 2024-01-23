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

class UpdateBulkDiscScreen extends StatefulWidget {
  final BulkDisc item;
  const UpdateBulkDiscScreen({
    super.key,
    required this.item,
  });

  @override
  State<UpdateBulkDiscScreen> createState() => _UpdateBulkDiscScreenState();
}

class _UpdateBulkDiscScreenState extends State<UpdateBulkDiscScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController couponNameController;
  late final TextEditingController couponAmountController;
  late final TextEditingController couponCodeController;
  late final TextEditingController discountPercentController;
  late final TextEditingController maxDiscountController;
  DateTime? validFromDate;
  DateTime? validToDate;
  bool? isMultiUse;

  @override
  void initState() {
    super.initState();
    couponNameController = TextEditingController();
    couponAmountController = TextEditingController();
    couponCodeController = TextEditingController();
    discountPercentController = TextEditingController();
    maxDiscountController = TextEditingController();

    couponNameController.text = widget.item.couponName.toString();
    couponAmountController.text = widget.item.couponGenAmount.toString();
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
    couponAmountController.dispose();
    couponCodeController.dispose();
    discountPercentController.dispose();
    maxDiscountController.dispose();
    super.dispose();
  }

  //update tax
  updateBulkDiscFn(BuildContext context, int id) {
    final db = DatabaseCubit.dbFrom(context);
    db.discBulkRepo.editBulkDisc(
      model: BulkDisc(
        couponGenAmount: int.parse(couponAmountController.text),
        id: widget.item.id,
        couponName: couponNameController.text,
        couponCode: couponCodeController.text,
        validFromDate: validFromDate as DateTime,
        validToDate: validToDate as DateTime,
        discountPercent: int.parse(discountPercentController.text),
        maxDiscount: int.parse(maxDiscountController.text),
        isMultiUse: isMultiUse as bool,
      ),
    );

    EasyLoading.showToast('Bulk Coupon Updated');
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

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Bulk Coupon'),
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
                    validator: nullCheckValidator,
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
                  PrimaryTextField(
                    validator: nullCheckValidator,
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
                  updateBulkDiscFn(context, widget.item.id);
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
