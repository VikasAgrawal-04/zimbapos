import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/category_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class UpdateCategoryScreen extends StatefulWidget {
  final CategoryModel item;
  const UpdateCategoryScreen({
    super.key,
    required this.item,
  });

  @override
  State<UpdateCategoryScreen> createState() => _UpdateCategoryScreenState();
}

class _UpdateCategoryScreenState extends State<UpdateCategoryScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final categoryName = TextEditingController();

  @override
  void initState() {
    super.initState();

    categoryName.text = widget.item.categoryName.toString();
  }

  @override
  void dispose() {
    categoryName.dispose();
    super.dispose();
  }

  void updateCategory(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.categoryRepository.updateCategory(
      data: CategoryModel(
        id: widget.item.id,
        categoryName: categoryName.text,
      ),
    );
    EasyLoading.showToast('Category updated');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit category'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                //   onPressed: () => updateCategory(context),
                //   child: const Text('Update Category'),
                // )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
            text: "Save",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                updateCategory(context);
              }
            }),
      ),
    );
  }
}
