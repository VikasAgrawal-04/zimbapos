import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_state.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';

import '../../../constants/kcolors.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateCusCatScreen extends StatefulWidget {
  const CreateCusCatScreen({super.key});

  @override
  State<CreateCusCatScreen> createState() => _CreateCusCatScreenState();
}

class _CreateCusCatScreenState extends State<CreateCusCatScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                                      .createCustomerCategories(
                                        CustomerCategoryModel(
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
