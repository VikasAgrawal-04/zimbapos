import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../models/global_models/payments_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreatePaymentScreen extends StatefulWidget {
  const CreatePaymentScreen({super.key});

  @override
  State<CreatePaymentScreen> createState() => _CreatePaymentScreenState();
}

class _CreatePaymentScreenState extends State<CreatePaymentScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController payCode;
  late final TextEditingController payTypeName;
  bool isUserCreated = false;
  String? outletId;

  @override
  void initState() {
    super.initState();
    payCode = TextEditingController();
    payTypeName = TextEditingController();

    DateTime currentDateTime = DateTime.now();

    String formattedDateTime =
        DateFormat('yyyyMMddHHmmss').format(currentDateTime);

    payCode.text = formattedDateTime;
    outletId = BlocProvider.of<DatabaseCubit>(context).outletId;
  }

  createPaymentFn() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    log("${BlocProvider.of<DatabaseCubit>(context).outletId}");
    dbCubit.paymentsRepository.createPayment(
      model: PaymentModel(
        payTypeName: payTypeName.text,
        isUserCreated: isUserCreated,
        payCode: payCode.text,
        outletId: outletId,
      ),
    );
    EasyLoading.showToast(
      'Payment Created',
      toastPosition: EasyLoadingToastPosition.bottom,
    );
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create payment'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: screenSize.height * 0.04),
                  //Payment name
                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Payment name',
                    controller: payTypeName,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  // payment code
                  PrimaryTextField(
                    enable: false,
                    validator: nullCheckValidator,
                    hintText: 'Payment code',
                    controller: payCode,
                    onChanged: (value) {},
                  ),
                  //switch for isUser created
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Is created by a user?",
                        style: KTextStyles.kTitle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Switch.adaptive(
                          value: isUserCreated,
                          onChanged: (va) {
                            setState(() {
                              isUserCreated = va;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
            text: "Save",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (outletId != null) {
                  createPaymentFn();
                } else {
                  UtillSnackbar.showSnackBar(
                    context,
                    title: "Alert",
                    body: "outletId not available",
                    isSuccess: false,
                  );
                }
              }
            }),
      ),
    );
  }
}
