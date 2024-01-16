import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/expense_category_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateExpenseCategoryScreen extends StatefulWidget {
  const CreateExpenseCategoryScreen({super.key});

  @override
  State<CreateExpenseCategoryScreen> createState() =>
      _CreateExpenseCategoryScreenState();
}

class _CreateExpenseCategoryScreenState
    extends State<CreateExpenseCategoryScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController expenseCatName;

  @override
  void initState() {
    super.initState();
    expenseCatName = TextEditingController();
  }

  createExpenseCatFn() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.expenseCategoryRepository.createExpenseCategory(
        model: ExpenseCategoryModel(expenseCategoryName: expenseCatName.text));
    EasyLoading.showToast(
      'Expense category creataed',
      toastPosition: EasyLoadingToastPosition.bottom,
    );
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create expense category'),
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
                  hintText: 'Expense category name',
                  controller: expenseCatName,
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
        onPressed: () => createExpenseCatFn(),
      ),
    );
  }
}
