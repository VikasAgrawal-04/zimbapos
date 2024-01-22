import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/payments_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class UpdatePaymentScreen extends StatefulWidget {
  final PaymentModel item;
  const UpdatePaymentScreen({
    super.key,
    required this.item,
  });

  @override
  State<UpdatePaymentScreen> createState() => _UpdatePaymentScreenState();
}

class _UpdatePaymentScreenState extends State<UpdatePaymentScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController payCode;
  late final TextEditingController payTypeName;
  bool? isUserCreated;
  String? outletId;

  @override
  void initState() {
    super.initState();
    payCode = TextEditingController();
    payTypeName = TextEditingController();

    // DateTime currentDateTime = DateTime.now();

    // String formattedDateTime =
    //     DateFormat('yyyyMMddHHmmss').format(currentDateTime);

    payCode.text = widget.item.payCode.toString();
    payTypeName.text = widget.item.payTypeName.toString();
    isUserCreated = widget.item.isUserCreated;
    outletId = widget.item.outletId;
    // log(outletId.toString());
    // log(widget.item.id.toString());
  }

  updatePaymentFn() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.paymentsRepository.editPayment(
      model: PaymentModel(
        id: widget.item.id,
        payTypeName: payTypeName.text,
        isUserCreated: isUserCreated,
        payCode: payCode.text,
        outletId: outletId,
      ),
    );
    EasyLoading.showToast(
      'Payment updated',
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
          title: const Text('Edit payment'),
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
                          value: isUserCreated as bool,
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
                if (outletId!.isNotEmpty) {
                  updatePaymentFn();
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
