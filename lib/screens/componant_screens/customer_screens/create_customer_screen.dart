import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_cubit.dart';
import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_state.dart';
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
  DateTime? createdDate;
  final customerAddr1 = TextEditingController();
  final customerAddr2 = TextEditingController();
  final customerAddr3 = TextEditingController();
  final customerCity = TextEditingController();
  final customerCountry = TextEditingController();
  final customerPinCode = TextEditingController();
  final customerGstNum = TextEditingController();
  final creditLimitAmount = TextEditingController();
  final balanceBonuspoints = TextEditingController();
  String? outletId;
  String? categoryId;
  String? dateOfbirth;
  String? anniversarydate;
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
                //cust name
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Customer name',
                  controller: customerName,
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
                  controller: customerMobile,
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
                            mobile: int.parse(customerMobile.text),
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
