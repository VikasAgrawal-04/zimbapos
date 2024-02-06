import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_cubit.dart';
import '../../../bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_state.dart';
import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_cubit.dart';
import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_state.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../models/global_models/customer_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateCustomerScreen extends StatefulWidget {
  const CreateCustomerScreen({super.key});

  @override
  State<CreateCustomerScreen> createState() => _CreateCustomerScreenState();
}

class _CreateCustomerScreenState extends State<CreateCustomerScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final customerName = TextEditingController();
  final customerEmail = TextEditingController();
  final customerMobile = TextEditingController();
  final customerAddr1 = TextEditingController();
  final customerAddr2 = TextEditingController();
  final customerAddr3 = TextEditingController();
  final customerCity = TextEditingController();
  final customerState = TextEditingController();
  final customerCountry = TextEditingController();
  final customerPinCode = TextEditingController();
  final customerGstNum = TextEditingController();
  final creditLimitAmount = TextEditingController();
  final balanceBonuspoints = TextEditingController();
  String? outletId;
  String? selectedCusCatId;
  DateTime? createDate;
  DateTime? dateOfBirth;
  DateTime? anniversaryDate;
  String? gender;

  @override
  void initState() {
    super.initState();
    outletId = BlocProvider.of<DatabaseCubit>(context).outletId;
  }

  @override
  void dispose() {
    customerName.dispose();
    customerMobile.dispose();
    customerEmail.dispose();
    customerAddr1.dispose();
    customerAddr2.dispose();
    customerAddr3.dispose();
    customerCity.dispose();
    customerState.dispose();
    customerCountry.dispose();
    customerPinCode.dispose();
    customerGstNum.dispose();
    creditLimitAmount.dispose();
    balanceBonuspoints.dispose();
    super.dispose();
  }

  // Pick start date method
  Future pickDate(int num) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2200),
    );

    if (pickedDate != null) {
      setState(() {
        if (num == 1) {
          createDate = pickedDate;
        } else if (num == 2) {
          dateOfBirth = pickedDate;
        } else if (num == 3) {
          anniversaryDate = pickedDate;
        }
      });
    }
  }

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenSize.height * 0.04),
                  //cust name
                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Customer name',
                    controller: customerName,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  //mobile
                  PrimaryTextField(
                    validator: integerValidator,
                    hintText: 'Customer mobile',
                    controller: customerMobile,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //email
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer email',
                    controller: customerEmail,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //Addr 1
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer Address 1',
                    controller: customerAddr1,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //addr 2
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer address 2',
                    controller: customerAddr2,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //addr 3
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer address 3',
                    controller: customerAddr3,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //dropdown for customer category
                  BlocBuilder<CustomerCategoryScreenCubit,
                      CustomerCategoryScreenState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Customer category:",
                              style: KTextStyles.kTitle,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              border: Border.all(
                                color: KColors.buttonColor,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedCusCatId,
                                isExpanded: true,
                                hint: const Text("Choose a customer category"),
                                onChanged: (newValue) {
                                  setState(() {
                                    selectedCusCatId = newValue;
                                  });
                                },
                                items: state.customerCategories.map((cusCat) {
                                  return DropdownMenuItem<String>(
                                    value: cusCat.custCategoryId.toString(),
                                    child: Text(
                                        cusCat.custCategoryName ?? 'error'),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //dropdown for gender
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Gender:",
                      style: KTextStyles.kTitle,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      border: Border.all(
                        color: KColors.buttonColor,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        enableFeedback: true,
                        hint: const Text("Choose a gender"),
                        value: gender,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (newValue) {
                          setState(() {
                            gender = newValue;
                          });
                        },
                        items: <String>[
                          'M',
                          'F',
                          'O'
                          // Add more options as needed
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //row for ceate, birth, anniversary date
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //start date column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "create date:",
                              style: KTextStyles.kTitle,
                            ),
                          ),

                          //below is date picker start date
                          InkWell(
                            onTap: () {
                              pickDate(1);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(14.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                border: Border.all(
                                  color: KColors.buttonColor,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: createDate == null
                                        ? Text(
                                            'Choose date',
                                            style: KTextStyles.kSubtitle,
                                          )
                                        : Text(
                                            DateFormat('dd/MM/yyyy')
                                                .format(createDate!),
                                            style: KTextStyles.kSubtitle,
                                          ),
                                  ),
                                  const Icon(
                                    Icons.calendar_month,
                                    color: KColors.buttonColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      //birth date column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Date Of Birth:",
                              style: KTextStyles.kTitle,
                            ),
                          ),

                          //below is date picker start date
                          InkWell(
                            onTap: () {
                              pickDate(2);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(14.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                border: Border.all(
                                  color: KColors.buttonColor,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: dateOfBirth == null
                                        ? Text(
                                            'Choose date',
                                            style: KTextStyles.kSubtitle,
                                          )
                                        : Text(
                                            DateFormat('dd/MM/yyyy')
                                                .format(dateOfBirth!),
                                            style: KTextStyles.kSubtitle,
                                          ),
                                  ),
                                  const Icon(
                                    Icons.calendar_month,
                                    color: KColors.buttonColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      //anniversary date column
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Anniversary date:",
                              style: KTextStyles.kTitle,
                            ),
                          ),
                          //below is date picker
                          InkWell(
                            onTap: () {
                              pickDate(3);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(14.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                border: Border.all(
                                  color: KColors.buttonColor,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: anniversaryDate == null
                                        ? Text(
                                            "choose date:",
                                            style: KTextStyles.kSubtitle,
                                          )
                                        : Text(
                                            DateFormat('dd/MM/yyyy')
                                                .format(anniversaryDate!),
                                            style: KTextStyles.kSubtitle,
                                          ),
                                  ),
                                  const Icon(
                                    Icons.calendar_month,
                                    color: KColors.buttonColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //city
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer city',
                    controller: customerCity,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //state
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer state',
                    controller: customerState,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //country
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer country',
                    controller: customerCountry,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //pin code
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer pincode',
                    controller: customerPinCode,
                    keyboard: TextInputType.number,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //gst
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer GST number',
                    controller: customerGstNum,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //credit limit
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer credit limit',
                    controller: creditLimitAmount,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //balance bonus points
                  PrimaryTextField(
                    // validator: nullCheckValidator,
                    hintText: 'Customer balance bonus points',
                    controller: balanceBonuspoints,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                ],
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
                    await context.read<CustomerScreenCubit>().createCustomer(
                          CustomerModel(
                            outletId: outletId,
                            customerName: customerName.text,
                            mobile: customerMobile.text,
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
