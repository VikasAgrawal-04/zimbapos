import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';

class CreateCusCatScreen extends StatefulWidget {
  const CreateCusCatScreen({super.key});

  @override
  State<CreateCusCatScreen> createState() => _CreateCusCatScreenState();
}

class _CreateCusCatScreenState extends State<CreateCusCatScreen> {
  final custCatName = TextEditingController();
  final discount = TextEditingController();

  @override
  void dispose() {
    custCatName.dispose();
    discount.dispose();
    super.dispose();
  }

  createCustCat(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.customerRepository.createCusCat(
        data: CustomerCategoryModel(
            custCategoryName: custCatName.text,
            custCategoryDiscount:
                double.parse(discount.text.isEmpty ? '0.0' : discount.text)));
    EasyLoading.showToast('Customer Category Created');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Customer Category'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: custCatName,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Customer Category'),
            ),
            SizedBox(height: 2.h),
            TextField(
              controller: discount,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Discount'),
            ),
            ElevatedButton(
              onPressed: () => createCustCat(context),
              child: const Text('Create Customer Category'),
            )
          ],
        ),
      ),
    );
  }
}
