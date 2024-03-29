import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_state.dart';
import 'package:zimbapos/models/global_models/customer_model.dart';
import 'package:zimbapos/widgets/dropdown/custom_dropdown.dart';
import 'package:zimbapos/widgets/textfield/date_textfield.dart';

import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_cubit.dart';
import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_state.dart';
import '../../../constants/kcolors.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class EditCustomerScreen extends StatefulWidget {
  final CustomerModel item;
  const EditCustomerScreen({
    super.key,
    required this.item,
  });

  @override
  State<EditCustomerScreen> createState() => _EditCustomerScreenState();
}

class _EditCustomerScreenState extends State<EditCustomerScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    context.read<CustomerScreenCubit>().fillControllers(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocBuilder<CustomerScreenCubit, CustomerScreenState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
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
                        'Create Customer',
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 12),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: screenSize.height * 0.04),
                          //cust name
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer Name',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: nullCheckValidator,
                                  // hintText: 'Area name',
                                  controller: state.customerName,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),
                          //mobile
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer Mobile',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: integerValidator,
                                  // hintText: 'Area name',
                                  controller: state.customerMobile,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //email
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer Email',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // validator: integerValidator,
                                  // hintText: 'Area name',
                                  controller: state.customerEmail,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //Addr 1
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer Address 1',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: integerValidator,
                                  // hintText: 'Area name',
                                  controller: state.customerAddr1,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //addr 2
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer Address 2',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: integerValidator,
                                  // hintText: 'Area name',
                                  controller: state.customerAddr2,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //addr 3
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer Address 3',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: integerValidator,
                                  // hintText: 'Area name',
                                  controller: state.customerAddr3,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //dropdown for customer category
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Customer Category",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: BlocBuilder<CustomerCategoryScreenCubit,
                                    CustomerCategoryScreenState>(
                                  builder: (context, state) {
                                    final activeCusCats = state
                                        .customerCategories
                                        .where((e) => e.isActive ?? false)
                                        .toList();
                                    return CustomDropDown<String>(
                                      // title: "Customer Category",
                                      items: activeCusCats
                                          .map((cusCat) =>
                                              cusCat.custCategoryName ??
                                              'error')
                                          .toList(),
                                      itemValues: state.customerCategories
                                          .map(
                                              (e) => e.custCategoryId ?? "null")
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
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //dropdown for gender
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Customer Gender",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: CustomDropDown<String>(
                                  // title: "Gender",
                                  hint: "Select Gender",
                                  items: const ['M', 'F', 'O'],
                                  value: state.gender,
                                  onChanged: context
                                      .read<CustomerScreenCubit>()
                                      .onGenderChange,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Customer Birth Date",
                                style: theme.textTheme.titleLarge,
                              )),
                              Expanded(
                                child: DateTextField(
                                  isRequired: false,
                                  hintText: "Select Birth Date",
                                  onChanged: context
                                      .read<CustomerScreenCubit>()
                                      .onBirthChange,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Customer Anniversary Date",
                                style: theme.textTheme.titleLarge,
                              )),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer City',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // hintText: 'Area name',
                                  controller: state.customerCity,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //state
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer State',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // hintText: 'Area name',
                                  controller: state.customerState,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //country
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer Country',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // hintText: 'Area name',
                                  controller: state.customerCountry,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //pin code
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer Pincode',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // hintText: 'Area name',
                                  controller: state.customerPinCode,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //gst
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer GST Number',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // hintText: 'Area name',
                                  controller: state.customerGstNum,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //credit limit
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer Credit Limit',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // hintText: 'Area name',
                                  controller: state.creditLimitAmount,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //balance bonus points
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Customer Balance Bonus Points',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  // hintText: 'Area name',
                                  controller: state.balanceBonuspoints,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

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
                                        .read<CustomerScreenCubit>()
                                        .updateCustomer(
                                          CustomerModel(
                                            customerId: widget.item.customerId,
                                            customerName:
                                                state.customerName.text,
                                            mobile: state.customerMobile.text,
                                            dateOfBirth: state.dateOfBirth,
                                            customerCategoryID:
                                                state.selectedCusCatId,
                                            anniversaryDate:
                                                state.anniversaryDate,
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
            ),
          );
        },
      ),
    );
  }
}
