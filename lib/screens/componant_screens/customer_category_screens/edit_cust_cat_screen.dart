import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/helpers/validators.dart';

import '../../../bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_cubit.dart';
import '../../../bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_state.dart';
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

  @override
  void initState() {
    super.initState();
    context.read<CustomerCategoryScreenCubit>().fillControllers(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          BlocBuilder<CustomerCategoryScreenCubit, CustomerCategoryScreenState>(
        builder: (context, state) {
          return Scaffold(
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
                      controller: state.custCatName,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 2.h),
                    //discount
                    PrimaryTextField(
                      validator: nullCheckValidator,
                      hintText: 'Discount',
                      controller: state.discount,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CustomButton(
              text: "Save",
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  await context
                      .read<CustomerCategoryScreenCubit>()
                      .updateCustomerCategory(
                        CustomerCategoryModel(
                          custCategoryId: widget.item.custCategoryId,
                          custCategoryName: state.custCatName.text,
                          custCategoryDiscount:
                              double.parse(state.discount.text),
                        ),
                      );

                  context.pop();
                }
              },
            ),
          );
        },
      ),
    );
  }
}
