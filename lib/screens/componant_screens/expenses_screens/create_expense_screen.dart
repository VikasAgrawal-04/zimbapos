import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/expense_category_model.dart';
import 'package:zimbapos/models/global_models/expenses_model.dart';
import 'package:zimbapos/widgets/my_snackbar_widget.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateExpenseScreen extends StatefulWidget {
  const CreateExpenseScreen({super.key});

  @override
  State<CreateExpenseScreen> createState() => _CreateExpenseScreenState();
}

class _CreateExpenseScreenState extends State<CreateExpenseScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController expenseDescr;
  late final TextEditingController billAmount;
  late final TextEditingController billDate;
  int? entryByUserId;
  int? expenseCatId;
  String? payMode;

  @override
  void initState() {
    super.initState();
    expenseDescr = TextEditingController();
    billAmount = TextEditingController();
    billDate = TextEditingController();
  }

  createExpenseFn() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.expensesRepository.createExpense(
        model: ExpenseModel(
      // entryDatetime: _selectedDate,
      entryDatetime: DateTime.now(),
      description: expenseDescr.text,
      amount: int.parse(billAmount.text),
      entryByUserId: entryByUserId,
      expenseCategoryId: expenseCatId,
      payMode: payMode,
    ));
    EasyLoading.showToast(
      'Expense Created',
      toastPosition: EasyLoadingToastPosition.bottom,
    );
    context.pop();
  }

  Future<List<ExpenseCategoryModel?>> getAllExpCats() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final exCats =
        await datatbaseCubit.expenseCategoryRepository.getExpenseCatList();
    // log(rateSets.toString());
    for (var exCat in exCats) {
      log(exCat!.expenseCategoryName.toString());
    }
    return exCats;
  }

  //for date picking
  DateTime? _selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        billDate.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create expense'),
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
                //area name
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Expense description',
                  controller: expenseDescr,
                  onChanged: (value) {},
                ),
                SizedBox(height: screenSize.height * 0.02),
                //
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Bill amount',
                  controller: billAmount,
                  onChanged: (value) {},
                ),
                // PrimaryTextField(
                //   hintText: 'Bill date',
                //   controller: billDate,
                //   onChanged: (value) {},
                //   suffixIcon: IconButton(
                //     icon: const Icon(Icons.calendar_today),
                //     onPressed: () {
                //       _selectDate(context);
                //     },
                //   ),
                // ),
                // SizedBox(height: screenSize.height * 0.02),
                //dropdown for users

                // SizedBox(
                //   height: 50,
                //   width: screenSize.width,
                //   child: FutureBuilder<List<RateSetsModel?>>(
                //     future: getAllUsers(),
                //     builder: (context, snapshot) {
                //       if (snapshot.connectionState == ConnectionState.waiting) {
                //         return const CircularProgressIndicator.adaptive();
                //       } else if (snapshot.hasError) {
                //         return Text('Error: ${snapshot.error}');
                //       } else {
                //         final rateSets = snapshot.data ?? [];

                //         return Column(
                //           children: [
                //             DropdownButton<int>(
                //               value: entryByUserId,
                //               hint: const Text("Choose a rate"),
                //               onChanged: (newValue) {
                //                 setState(() {
                //                   entryByUserId = newValue;
                //                 });
                //               },
                //               items: rateSets.map((rateSet) {
                //                 return DropdownMenuItem<int>(
                //                   value: rateSet!.id,
                //                   child: Text(rateSet.ratesetName ?? 'error'),
                //                 );
                //               }).toList(),
                //             ),
                //           ],
                //         );
                //       }
                //     },
                //   ),
                // ),
                SizedBox(height: screenSize.height * 0.02),
                //dropdown for expense cat
                SizedBox(
                  // height: 50,
                  width: screenSize.width,
                  child: FutureBuilder<List<ExpenseCategoryModel?>>(
                    future: getAllExpCats(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator.adaptive();
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        final exCats = snapshot.data ?? [];

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
                                child: DropdownButton<int>(
                                  isExpanded: true,
                                  enableFeedback: true,
                                  value: expenseCatId,
                                  hint: const Text("Choose a expense category"),
                                  onChanged: (newValue) {
                                    setState(() {
                                      expenseCatId = newValue;
                                    });
                                  },
                                  items: exCats.map((rateSet) {
                                    return DropdownMenuItem<int>(
                                      value: rateSet!.id,
                                      child: Text(rateSet.expenseCategoryName ??
                                          'error'),
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
                      hint: const Text("Choose a payment method"),
                      value: payMode,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      onChanged: (newValue) {
                        setState(() {
                          payMode = newValue;
                        });
                      },
                      items: <String>[
                        'Cash',
                        'Card',
                        'Credit',
                        'UPI',
                        'Cheque',
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

                //dropdown for paymode
                // SizedBox(
                //   height: 50,
                //   width: screenSize.width,
                //   child: FutureBuilder<List<RateSetsModel?>>(
                //     future: getAllUsers(),
                //     builder: (context, snapshot) {
                //       if (snapshot.connectionState == ConnectionState.waiting) {
                //         return const CircularProgressIndicator.adaptive();
                //       } else if (snapshot.hasError) {
                //         return Text('Error: ${snapshot.error}');
                //       } else {
                //         final rateSets = snapshot.data ?? [];

                //         return Column(
                //           children: [

                //             //
                //             DropdownButton<int>(
                //               value: entryByUserId,
                //               hint: const Text("Choose a rate"),
                //               onChanged: (newValue) {
                //                 setState(() {
                //                   entryByUserId = newValue;
                //                 });
                //               },
                //               items: rateSets.map((rateSet) {
                //                 return DropdownMenuItem<int>(
                //                   value: rateSet!.id,
                //                   child: Text(rateSet.ratesetName ?? 'error'),
                //                 );
                //               }).toList(),
                //             ),
                //           ],
                //         );
                //       }
                //     },
                //   ),
                // ),
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
              if (expenseCatId != null) {
                if (payMode != null) {
                  createExpenseFn();
                } else {
                  UtillSnackbar.showSnackBar(
                    context,
                    title: "Alert",
                    body: "Please choose a payment method",
                    isSuccess: false,
                  );
                }
              } else {
                UtillSnackbar.showSnackBar(
                  context,
                  title: "Alert",
                  body: "Please choose expense category",
                  isSuccess: false,
                );
              }
            }
          }),
    );
  }
}
