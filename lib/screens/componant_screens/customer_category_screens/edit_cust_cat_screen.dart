import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/helpers/validators.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/customer_category_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class UpdateCustomerCategoryScreen extends StatefulWidget {
  final CustomerCategoryModel item;
  const UpdateCustomerCategoryScreen({
    super.key,
    required this.item,
  });

  @override
  State<UpdateCustomerCategoryScreen> createState() =>
      _UpdateCustomerCategoryScreenState();
}

class _UpdateCustomerCategoryScreenState
    extends State<UpdateCustomerCategoryScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final custCatName = TextEditingController();
  final discount = TextEditingController();

  @override
  void initState() {
    super.initState();

    custCatName.text = widget.item.custCategoryName.toString();
    discount.text = widget.item.custCategoryDiscount.toString();
  }

  @override
  void dispose() {
    custCatName.dispose();
    discount.dispose();
    super.dispose();
  }

  //update function
  updateCustomerCat(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.customerRepository.updateCusCat(
      data: CustomerCategoryModel(
        id: widget.item.id,
        custCategoryName: custCatName.text,
        custCategoryDiscount: double.parse(
          discount.text.isEmpty ? '0.0' : discount.text,
        ),
      ),
    );

    EasyLoading.showToast('Customer category Updated');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Customer Category'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //cus cat name
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Customer category name',
                  controller: custCatName,
                  onChanged: (value) {},
                ),
                // TextField(
                //   controller: custCatName,
                //   decoration: const InputDecoration(
                //       border: OutlineInputBorder(),
                //       hintText: 'Enter Customer Category'),
                // ),
                SizedBox(height: 2.h),
                //discount
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Discount',
                  controller: discount,
                  onChanged: (value) {},
                ),
                // TextField(
                //   controller: discount,
                //   decoration: const InputDecoration(
                //       border: OutlineInputBorder(), hintText: 'Enter Discount'),
                // ),
                // ElevatedButton(
                //   onPressed: () => updateCustomerCat(context),
                //   child: const Text('Update Customer Category'),
                // )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
            text: "Save",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                updateCustomerCat(context);
              }
            }),
      ),
    );
  }
}
