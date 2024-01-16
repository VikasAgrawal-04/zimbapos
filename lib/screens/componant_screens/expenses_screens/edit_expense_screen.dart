import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/expenses_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/expense_category_model.dart';
import '../../../models/global_models/rate_sets_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class UpdateExpenseScreen extends StatefulWidget {
  final ExpenseModel item;
  const UpdateExpenseScreen({
    super.key,
    required this.item,
  });

  @override
  State<UpdateExpenseScreen> createState() => _UpdateExpenseScreenState();
}

class _UpdateExpenseScreenState extends State<UpdateExpenseScreen> {
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
    expenseDescr.text = widget.item.description.toString();
    billAmount = TextEditingController();
    billAmount.text = widget.item.amount.toString();
    billDate = TextEditingController();
    billDate.text = widget.item.billDate.toString();
    entryByUserId = widget.item.entryByUserId;
    expenseCatId = widget.item.expenseCategoryId;
    payMode = widget.item.payMode;
    log(widget.item.payMode.toString());
  }

  updateExpenseFn() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.expensesRepository.editExpense(
      model: ExpenseModel(
        // entryDatetime: _selectedDate,
        id: widget.item.id,
        entryDatetime: DateTime.now(),
        description: expenseDescr.text,
        amount: int.parse(billAmount.text),
        entryByUserId: entryByUserId,
        expenseCategoryId: expenseCatId,
        payMode: payMode,
      ),
      // id: widget.item.id,
    );
    EasyLoading.showToast(
      'Expense Updated',
      toastPosition: EasyLoadingToastPosition.bottom,
    );
    context.pop();
  }

  Future<List<RateSetsModel?>> getAllUsers() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final rateSets = await datatbaseCubit.rateSetsRepository.getRateSets();
    // log(rateSets.toString());
    for (var rateSet in rateSets) {
      log(rateSet!.ratesetName.toString());
    }
    return rateSets;
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
        title: const Text('Edit expense'),
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
                SizedBox(height: screenSize.height * 0.02),
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
                // SizedBox(height: screenSize.height * 0.02),
                //dropdown for expense cat

                SizedBox(
                  height: 50,
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
                            DropdownButton<int>(
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
                                  child: Text(
                                      rateSet.expenseCategoryName ?? 'error'),
                                );
                              }).toList(),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: screenSize.height * 0.02),

                DropdownButton<String>(
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
                // SizedBox(height: screenSize.height * 0.02),
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
                  updateExpenseFn();
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
