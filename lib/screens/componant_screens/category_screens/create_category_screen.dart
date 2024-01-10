import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/category_model.dart';

class CreateCategoryScreen extends StatefulWidget {
  const CreateCategoryScreen({super.key});

  @override
  State<CreateCategoryScreen> createState() => _CreateCategoryScreenState();
}

class _CreateCategoryScreenState extends State<CreateCategoryScreen> {
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
    EasyLoading.showToast('Table Created');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Table'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: categoryName,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Category'),
            ),
            SizedBox(height: 2.h),
            ElevatedButton(
              onPressed: () => createCategory(context),
              child: const Text('Create Category'),
            )
          ],
        ),
      ),
    );
  }
}
