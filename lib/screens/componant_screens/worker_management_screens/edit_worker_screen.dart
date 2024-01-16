import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/widgets/custom_button.dart';
import '../../../models/global_models/workers_model.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class EditWorkerScreen extends StatefulWidget {
  final WorkersModel initialModel;
  const EditWorkerScreen({
    required this.initialModel,
    super.key,
  });

  @override
  State<EditWorkerScreen> createState() => EditWorkerScreenState();
}

class EditWorkerScreenState extends State<EditWorkerScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController nameController;
  late final TextEditingController mobileController;
  late final TextEditingController loginIDController;
  late final TextEditingController passwordController;
  String? dropDownValue;
  bool enableLogin = false;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    nameController.text = widget.initialModel.workerName;
    mobileController = TextEditingController();
    mobileController.text = widget.initialModel.mobile;
    loginIDController = TextEditingController();
    loginIDController.text = widget.initialModel.loginCode;
    passwordController = TextEditingController();
    passwordController.text = widget.initialModel.password;
    enableLogin = widget.initialModel.canLoginIntoApp;
    dropDownValue = widget.initialModel.workerRole;
  }

  changeLoginState() {
    setState(() {
      enableLogin = !enableLogin;
    });
  }

  editWorker() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.workerRepository.editWorker(
      model: WorkersModel(
        id: widget.initialModel.id,
        outletId: 12341234,
        workerId: widget.initialModel.workerId,
        workerName: nameController.text,
        createdByUserID: 'Suyash',
        workerRole: dropDownValue ?? '',
        mobile: mobileController.text,
        canLoginIntoApp: enableLogin,
        loginCode: loginIDController.text,
        password: passwordController.text,
        isActive: widget.initialModel.isActive,
        isDeleted: widget.initialModel.isDeleted,
      ),
    );
    EasyLoading.showToast(
      'Worker Updated',
      toastPosition: EasyLoadingToastPosition.bottom,
    );
    context.pop();
  }

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Worker Screen'),
      ),
      bottomNavigationBar: CustomButton(
          text: "Update worker",
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              if (dropDownValue != null) {
                editWorker();
              } else {
                UtillSnackbar.showSnackBar(
                  context,
                  title: "Alert",
                  body: "Please choose a role",
                  isSuccess: false,
                );
              }
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
                validator: nameValidator,
                hintText: 'Worker Name',
                controller: nameController,
                onChanged: (value) {},
              ),
              SizedBox(height: 5.h),
              DropdownButton(
                value: dropDownValue,
                enableFeedback: true,
                isExpanded: true,
                hint: const Text('Select Role'),
                items: const [
                  DropdownMenuItem(
                    value: 'W',
                    child: Text('Waiter'),
                  ),
                  DropdownMenuItem(
                    value: 'C',
                    child: Text('Caption'),
                  ),
                  DropdownMenuItem(
                    value: 'D',
                    child: Text('Delivery Boy'),
                  ),
                  DropdownMenuItem(
                    value: 'S',
                    child: Text('Steward'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    dropDownValue = value;
                  });
                },
              ),
              SizedBox(height: 5.h),
              PrimaryTextField(
                validator: mobileNumberValidator,
                hintText: 'Mobile No.',
                controller: mobileController,
                onChanged: (value) {},
              ),
              SizedBox(height: 10.h),
              const Divider(),
              GestureDetector(
                onTap: () => changeLoginState(),
                child: Row(
                  children: [
                    Checkbox.adaptive(
                      value: enableLogin,
                      onChanged: (value) => changeLoginState(),
                    ),
                    const Text('Enable Login')
                  ],
                ),
              ),
              PrimaryTextField(
                validator: enableLogin ? nullCheckValidator : null,
                enable: enableLogin,
                hintText: 'Login ID',
                controller: loginIDController,
                onChanged: (value) {},
              ),
              SizedBox(height: 5.h),
              PrimaryTextField(
                validator: enableLogin ? passwordValidator : null,
                enable: enableLogin,
                hintText: 'Password',
                controller: passwordController,
                onChanged: (p0) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
