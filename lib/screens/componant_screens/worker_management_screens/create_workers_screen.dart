import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:uuid/uuid.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/widgets/custom_button.dart';
import 'package:zimbapos/widgets/textfield/primary_textfield.dart';

import '../../../constants/kcolors.dart';
import '../../../widgets/my_snackbar_widget.dart';

class CreateWorkerScreen extends StatefulWidget {
  const CreateWorkerScreen({super.key});

  @override
  State<CreateWorkerScreen> createState() => _CreateWorkersScrenState();
}

class _CreateWorkersScrenState extends State<CreateWorkerScreen> {
  //
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
    mobileController = TextEditingController();
    loginIDController = TextEditingController();
    passwordController = TextEditingController();
  }

  changeLoginState() {
    setState(() {
      enableLogin = !enableLogin;
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  createWorker() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.workerRepository.createWorker(
      model: WorkersModel(
        outletId: '12341234',
        workerId: const Uuid().v1(),
        workerName: nameController.text,
        createdByUserID: 'Suyash',
        workerRole: dropDownValue ?? '',
        mobile: mobileController.text,
        canLoginIntoApp: enableLogin,
        loginCode: loginIDController.text,
        password: passwordController.text,
        isActive: true,
        isDeleted: false,
      ),
    );
    EasyLoading.showToast(
      'Worker Created',
      toastPosition: EasyLoadingToastPosition.bottom,
    );
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Worker'),
        ),
        bottomNavigationBar: CustomButton(
            text: "Create worker",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (dropDownValue != null) {
                  createWorker();
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
                    child: DropdownButton(
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
                  ),
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
                  enable: enableLogin,
                  validator: enableLogin ? nullCheckValidator : null,
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
      ),
    );
  }
}
