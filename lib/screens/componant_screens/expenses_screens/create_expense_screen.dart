import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/expenses_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/rate_sets_model.dart';
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
  int? entryByUserId;
  int? expenseCatId;
  String? payMode;

  @override
  void initState() {
    super.initState();
    expenseDescr = TextEditingController();
    billAmount = TextEditingController();
  }

  createExpenseFn() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.expensesRepository.createExpense(
        model: ExpenseModel(
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

  Future<List<RateSetsModel?>> getAllUsers() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final rateSets = await datatbaseCubit.rateSetsRepository.getRateSets();
    // log(rateSets.toString());
    for (var rateSet in rateSets) {
      log(rateSet!.ratesetName.toString());
    }
    return rateSets;
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
                  hintText: 'Expense description',
                  controller: expenseDescr,
                  onChanged: (value) {},
                ),
                SizedBox(height: screenSize.height * 0.02),
                //
                PrimaryTextField(
                  hintText: 'Bill amount',
                  controller: billAmount,
                  onChanged: (value) {},
                ),
                SizedBox(height: screenSize.height * 0.02),
                //dropdown for users
                SizedBox(
                  height: 50,
                  width: screenSize.width,
                  child: FutureBuilder<List<RateSetsModel?>>(
                    future: getAllUsers(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator.adaptive();
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        final rateSets = snapshot.data ?? [];

                        return Column(
                          children: [
                            DropdownButton<int>(
                              value: entryByUserId,
                              hint: const Text("Choose a rate"),
                              onChanged: (newValue) {
                                setState(() {
                                  entryByUserId = newValue;
                                });
                              },
                              items: rateSets.map((rateSet) {
                                return DropdownMenuItem<int>(
                                  value: rateSet!.id,
                                  child: Text(rateSet.ratesetName ?? 'error'),
                                );
                              }).toList(),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: screenSize.height * 0.2),
                //dropdown for expense cat
                SizedBox(
                  height: 50,
                  width: screenSize.width,
                  child: FutureBuilder<List<RateSetsModel?>>(
                    future: getAllUsers(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator.adaptive();
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        final rateSets = snapshot.data ?? [];

                        return Column(
                          children: [
                            DropdownButton<int>(
                              value: entryByUserId,
                              hint: const Text("Choose a rate"),
                              onChanged: (newValue) {
                                setState(() {
                                  entryByUserId = newValue;
                                });
                              },
                              items: rateSets.map((rateSet) {
                                return DropdownMenuItem<int>(
                                  value: rateSet!.id,
                                  child: Text(rateSet.ratesetName ?? 'error'),
                                );
                              }).toList(),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: screenSize.height * 0.2),

                //dropdown for paymode
                SizedBox(
                  height: 50,
                  width: screenSize.width,
                  child: FutureBuilder<List<RateSetsModel?>>(
                    future: getAllUsers(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator.adaptive();
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        final rateSets = snapshot.data ?? [];

                        return Column(
                          children: [
                            DropdownButton<int>(
                              value: entryByUserId,
                              hint: const Text("Choose a rate"),
                              onChanged: (newValue) {
                                setState(() {
                                  entryByUserId = newValue;
                                });
                              },
                              items: rateSets.map((rateSet) {
                                return DropdownMenuItem<int>(
                                  value: rateSet!.id,
                                  child: Text(rateSet.ratesetName ?? 'error'),
                                );
                              }).toList(),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: screenSize.height * 0.2),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomButton(
        text: "Save",
        onPressed: () => createExpenseFn(),
      ),
    );
  }
}
