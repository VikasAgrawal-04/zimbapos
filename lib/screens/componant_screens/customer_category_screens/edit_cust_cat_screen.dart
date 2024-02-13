import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/helpers/validators.dart';

import '../../../bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_cubit.dart';
import '../../../bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_state.dart';
import '../../../constants/kcolors.dart';
import '../../../models/global_models/customer_category_model.dart';
import '../../../widgets/custom_button/custom_button.dart';
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
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return SafeArea(
      child:
          BlocBuilder<CustomerCategoryScreenCubit, CustomerCategoryScreenState>(
        builder: (context, state) {
          return Scaffold(
            body: Column(
              children: [
                //header
                Container(
                  width: double.infinity,
                  height: screenSize.height * 0.15,
                  decoration: BoxDecoration(
                    color: KColors.blackColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Create Customer Category',
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: Image.asset(
                        "assets/icons/back.png",
                        height: 5.h,
                      ),
                    ),
                  ],
                ),

                //form
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //cust cat name
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Customer Category Name',
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Expanded(
                              child: PrimaryTextField(
                                validator: nullCheckValidator,
                                // hintText: 'Area name',
                                controller: state.custCatName,
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h),

                        //discount
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                'Discount',
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Expanded(
                              child: PrimaryTextField(
                                validator: nullCheckValidator,
                                // hintText: 'Area name',
                                controller: state.discount,
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h),

                        //buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //cancel
                            CustomButtonNew(
                              width: 68.sp,
                              height: 28.sp,
                              text: "Cancel",
                              color: KColors.blackColor,
                              onTap: () async {
                                //clear controllers and pop
                                context.pop();
                              },
                            ),

                            //save
                            CustomButtonNew(
                              text: "Submit",
                              width: 68.sp,
                              height: 28.sp,
                              color: theme.primaryColor,
                              onTap: () async {
                                if (_formKey.currentState!.validate()) {
                                  await context
                                      .read<CustomerCategoryScreenCubit>()
                                      .updateCustomerCategory(
                                        CustomerCategoryModel(
                                          custCategoryId:
                                              widget.item.custCategoryId,
                                          custCategoryName:
                                              state.custCatName.text,
                                          custCategoryDiscount:
                                              double.parse(state.discount.text),
                                        ),
                                      );

                                  context.pop();
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
