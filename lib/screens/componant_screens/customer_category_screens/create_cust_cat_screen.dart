import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_state.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateCusCatScreen extends StatefulWidget {
  const CreateCusCatScreen({super.key});

  @override
  State<CreateCusCatScreen> createState() => _CreateCusCatScreenState();
}

class _CreateCusCatScreenState extends State<CreateCusCatScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final custCatName = TextEditingController();
  final discount = TextEditingController();
  String? outletId;

  @override
  void initState() {
    super.initState();
    outletId = BlocProvider.of<DatabaseCubit>(context).outletId;
  }

  @override
  void dispose() {
    custCatName.dispose();
    discount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Customer Category'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //cust cat name
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
                //       border: OutlineInputBorder(),
                //       hintText: 'Enter Discount'),
                // ),
                // ElevatedButton(
                //   onPressed: () => createCustCat(context),
                //   child: const Text('Create Customer Category'),
                // )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BlocBuilder<CustomerCategoryScreenCubit,
            CustomerCategoryScreenState>(
          builder: (context, state) {
            return CustomButton(
                text: "Save",
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await context
                        .read<CustomerCategoryScreenCubit>()
                        .createCustomerCategories(
                          CustomerCategoryModel(
                            // outletId: outletId,
                            custCategoryName: custCatName.text,
                            custCategoryDiscount: double.parse(discount.text),
                          ),
                        );

                    context.pop();
                  }
                });
          },
        ),
      ),
    );
  }
}
