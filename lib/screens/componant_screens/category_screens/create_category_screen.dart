import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/category_model.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateCategoryScreen extends StatefulWidget {
  const CreateCategoryScreen({super.key});

  @override
  State<CreateCategoryScreen> createState() => _CreateCategoryScreenState();
}

class _CreateCategoryScreenState extends State<CreateCategoryScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final categoryName = TextEditingController();

  @override
  void dispose() {
    categoryName.dispose();
    super.dispose();
  }

  void createCategory(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.categoryRepository
        .createCategory(data: CategoryModel(categoryName: categoryName.text));
    EasyLoading.showToast('Category Created');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create category'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //cat name
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Category name',
                  controller: categoryName,
                  onChanged: (value) {},
                ),
                // TextField(
                //   controller: categoryName,
                //   decoration: const InputDecoration(
                //       border: OutlineInputBorder(), hintText: 'Enter Category'),
                // ),
                SizedBox(height: 2.h),
                // ElevatedButton(
                //   onPressed: () => createCategory(context),
                //   child: const Text('Create Category'),
                // )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
            text: "Save",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                createCategory(context);
              }
            }),
      ),
    );
  }
}
