import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/helpers/validators.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/vendor_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateVendorScreen extends StatefulWidget {
  const CreateVendorScreen({super.key});

  @override
  State<CreateVendorScreen> createState() => _CreateVendorScreenState();
}

class _CreateVendorScreenState extends State<CreateVendorScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController vendorNameController;
  late final TextEditingController addr1Controller;
  late final TextEditingController addr2Controller;
  late final TextEditingController addr3Controller;
  late final TextEditingController postCodeController;
  late final TextEditingController cityController;
  late final TextEditingController stateController;
  late final TextEditingController countryController;
  late final TextEditingController mobileController;
  late final TextEditingController siteController;
  late final TextEditingController emailController;
  late final TextEditingController gstController;
  late final TextEditingController bankAccNoController;
  late final TextEditingController bankAccHolderNameController;
  late final TextEditingController bankNameController;
  late final TextEditingController bankBranchController;
  late final TextEditingController bankIFSCController;

  @override
  void initState() {
    super.initState();
    vendorNameController = TextEditingController();
    addr1Controller = TextEditingController();
    addr2Controller = TextEditingController();
    addr3Controller = TextEditingController();
    postCodeController = TextEditingController();
    cityController = TextEditingController();
    stateController = TextEditingController();
    countryController = TextEditingController();
    mobileController = TextEditingController();
    emailController = TextEditingController();
    siteController = TextEditingController();
    gstController = TextEditingController();
    bankAccNoController = TextEditingController();
    bankAccHolderNameController = TextEditingController();
    bankNameController = TextEditingController();
    bankBranchController = TextEditingController();
    bankIFSCController = TextEditingController();
  }

  createVendor() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.vendorRepository.createVendor(
      model: VendorModel(
        vendorName: vendorNameController.text,
        address1: addr1Controller.text,
        address2: addr2Controller.text,
        address3: addr3Controller.text,
        postcode: postCodeController.text,
        city: cityController.text,
        state: stateController.text,
        country: countryController.text,
        mobile: mobileController.text.isEmpty
            ? null
            : int.parse(mobileController.text),
        email: emailController.text,
        website: emailController.text,
        gst: gstController.text,
        bankAccNo: bankAccNoController.text.isEmpty
            ? null
            : int.parse(bankAccNoController.text),
        bankAccHolderName: bankAccHolderNameController.text,
        bankName: bankNameController.text,
        bankBranch: bankBranchController.text,
        ifscCode: bankIFSCController.text,
      ),
    );
    EasyLoading.showToast(
      'Vendor created',
      toastPosition: EasyLoadingToastPosition.bottom,
    );
    context.pop();
  }

  @override
  void dispose() {
    vendorNameController.dispose();
    addr1Controller.dispose();
    addr2Controller.dispose();
    addr3Controller.dispose();
    postCodeController.dispose();
    cityController.dispose();
    stateController.dispose();
    countryController.dispose();
    mobileController.dispose();
    emailController.dispose();
    siteController.dispose();
    gstController.dispose();
    bankAccNoController.dispose();
    bankAccHolderNameController.dispose();
    bankNameController.dispose();
    bankBranchController.dispose();
    bankIFSCController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Save'),
        ),
        bottomNavigationBar: CustomButton(
            text: "Create vendor",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                createVendor();
              }
            }),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Vendor Name',
                  controller: vendorNameController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Address 1',
                  controller: addr1Controller,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Address 2',
                  controller: addr2Controller,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Address 3',
                  controller: addr3Controller,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Postal code',
                  controller: postCodeController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'City',
                  controller: cityController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'State',
                  controller: stateController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Country',
                  controller: countryController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Mobile',
                  controller: mobileController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Email',
                  controller: emailController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Website',
                  controller: siteController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'GST no',
                  controller: gstController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Bank acc no',
                  controller: bankAccNoController,
                  keyboard: TextInputType.number,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Bank acc holder name',
                  controller: bankAccHolderNameController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Bank name',
                  controller: bankNameController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Bank branch',
                  controller: bankBranchController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
                PrimaryTextField(
                  hintText: 'Bank IFSC code',
                  controller: bankIFSCController,
                  onChanged: (value) {},
                ),
                SizedBox(height: 5.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
