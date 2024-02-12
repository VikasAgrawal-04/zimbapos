import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/widgets/dropdown/custom_dropdown.dart';
import 'package:zimbapos/widgets/textfield/date_textfield.dart';

import '../../../bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_cubit.dart';
import '../../../bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_state.dart';
import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_cubit.dart';
import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_state.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateCustomerScreen extends StatefulWidget {
  const CreateCustomerScreen({super.key});

  @override
  State<CreateCustomerScreen> createState() => _CreateCustomerScreenState();
}

class _CreateCustomerScreenState extends State<CreateCustomerScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Customer'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: BlocBuilder<CustomerScreenCubit, CustomerScreenState>(
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: screenSize.height * 0.04),
                      //cust name
                      PrimaryTextField(
                        validator: nullCheckValidator,
                        hintText: 'Customer name',
                        controller: state.customerName,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      //mobile
                      PrimaryTextField(
                        validator: integerValidator,
                        hintText: 'Customer mobile',
                        controller: state.customerMobile,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //email
                      PrimaryTextField(
                        hintText: 'Customer email',
                        controller: state.customerEmail,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //Addr 1
                      PrimaryTextField(
                        hintText: 'Customer Address 1',
                        controller: state.customerAddr1,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //addr 2
                      PrimaryTextField(
                        hintText: 'Customer address 2',
                        controller: state.customerAddr2,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //addr 3
                      PrimaryTextField(
                        hintText: 'Customer address 3',
                        controller: state.customerAddr3,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //dropdown for customer category
                      BlocBuilder<CustomerCategoryScreenCubit,
                          CustomerCategoryScreenState>(
                        builder: (context, state) {
                          return CustomDropDown<String>(
                            title: "Customer Category",
                            items: state.customerCategories
                                .map((cusCat) =>
                                    cusCat.custCategoryName ?? 'error')
                                .toList(),
                            itemValues: state.customerCategories
                                .map((e) => e.custCategoryId ?? "null")
                                .toList(),
                            value: context
                                .read<CustomerScreenCubit>()
                                .state
                                .selectedCusCatId,
                            hint: "Choose a customer category",
                            onChanged: (value) {
                              context
                                  .read<CustomerScreenCubit>()
                                  .onCusCatChange(value);
                            },
                          );
                        },
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //dropdown for gender
                      CustomDropDown<String>(
                        title: "Gender",
                        hint: "Select Gender",
                        items: const ['M', 'F', 'O'],
                        value: state.gender,
                        onChanged:
                            context.read<CustomerScreenCubit>().onGenderChange,
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: DateTextField(
                              isRequired: false,
                              hintText: "Select Birth Date",
                              onChanged: context
                                  .read<CustomerScreenCubit>()
                                  .onBirthChange,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          Expanded(
                            child: DateTextField(
                              isRequired: false,
                              hintText: "Select Anniversary Date",
                              onChanged: context
                                  .read<CustomerScreenCubit>()
                                  .onAnnivChange,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //city
                      PrimaryTextField(
                        hintText: 'Customer city',
                        controller: state.customerCity,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //state
                      PrimaryTextField(
                        hintText: 'Customer state',
                        controller: state.customerState,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //country
                      PrimaryTextField(
                        hintText: 'Customer country',
                        controller: state.customerCountry,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //pin code
                      PrimaryTextField(
                        hintText: 'Customer pincode',
                        controller: state.customerPinCode,
                        keyboard: TextInputType.number,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //gst
                      PrimaryTextField(
                        hintText: 'Customer GST number',
                        controller: state.customerGstNum,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //credit limit
                      PrimaryTextField(
                        hintText: 'Customer credit limit',
                        controller: state.creditLimitAmount,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),

                      //balance bonus points
                      PrimaryTextField(
                        hintText: 'Customer balance bonus points',
                        controller: state.balanceBonuspoints,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
        bottomNavigationBar:
            BlocBuilder<CustomerScreenCubit, CustomerScreenState>(
          builder: (context, state) {
            return CustomButton(
                text: "Save",
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await context.read<CustomerScreenCubit>().createCustomer();
                    context.pop();
                  }
                });
          },
        ),
      ),
    );
  }
}
