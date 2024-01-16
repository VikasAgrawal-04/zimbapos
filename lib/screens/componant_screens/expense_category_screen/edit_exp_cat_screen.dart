import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/expense_category_model.dart';
import 'package:zimbapos/widgets/custom_button.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class UpdateExpenseCategoryScreen extends StatefulWidget {
  final ExpenseCategoryModel item;
  const UpdateExpenseCategoryScreen({
    super.key,
    required this.item,
  });

  @override
  State<UpdateExpenseCategoryScreen> createState() =>
      _UpdateExpenseCategoryScreenState();
}

class _UpdateExpenseCategoryScreenState
    extends State<UpdateExpenseCategoryScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController expenseCatName;

  @override
  void initState() {
    super.initState();
    expenseCatName = TextEditingController();
    expenseCatName.text = widget.item.expenseCategoryName;
  }

  updateExpenseCatFn() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.expenseCategoryRepository.editExpenseCat(
      model: ExpenseCategoryModel(
        id: widget.item.id,
        expenseCategoryName: expenseCatName.text,
      ),
      // id: widget.item.id,
    );
    EasyLoading.showToast(
      'Expense category updated',
      toastPosition: EasyLoadingToastPosition.bottom,
    );
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit expense category'),
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
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              updateExpenseCatFn();
            }
          }),
    );
  }
}
