import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/constants/ktextstyles.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/card_model.dart';
import 'package:zimbapos/widgets/my_alert_widget.dart';
import 'package:zimbapos/widgets/my_snackbar_widget.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../helpers/validators.dart';
import '../../../models/global_models/card_log_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CardActionScreen extends StatefulWidget {
  final CardModel item;
  const CardActionScreen({
    super.key,
    required this.item,
  });

  @override
  State<CardActionScreen> createState() => _CardActionScreenState();
}

class _CardActionScreenState extends State<CardActionScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController cardIdController;
  late final TextEditingController balanceController;
  late final TextEditingController customerNameController;
  late final TextEditingController customerMobileController;
  late final TextEditingController customerEmailController;
  late final TextEditingController amountController;
  String? outletId;
  String? payMode;
  String? actionType;
  String? terminalIp;
  String? deviceId;

  @override
  void initState() {
    super.initState();
    cardIdController = TextEditingController();
    balanceController = TextEditingController();
    customerNameController = TextEditingController();
    customerMobileController = TextEditingController();
    customerEmailController = TextEditingController();
    amountController = TextEditingController();
    outletId = BlocProvider.of<DatabaseCubit>(context).outletId;
    getTerminalIp();
    getuserId();

    balanceController.text = widget.item.balance.toString();
    actionType = "U";

    cardIdController.text = widget.item.cardId.toString();
    balanceController.text = widget.item.balance.toString();
    customerNameController.text = widget.item.customerName.toString();
    customerMobileController.text = widget.item.customerMobile.toString();
    customerEmailController.text = widget.item.customerEmail.toString();
  }

  @override
  void dispose() {
    cardIdController.dispose();
    balanceController.dispose();
    customerNameController.dispose();
    customerMobileController.dispose();
    customerEmailController.dispose();
    amountController.dispose();
    super.dispose();
  }

  createCardFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);

    //check action type
    if (actionType == "L") {
      //update card with balance

      // db.cardRepository.updateCard(
      //   CardModel(
      //     id: widget.item.id,
      //     outletId: outletId,
      //     cardId: widget.item.cardId,
      //     balance: double.parse((int.parse(balanceController.text) +
      //             int.parse(amountController.text))
      //         .toString()),
      //     customerName: widget.item.customerName,
      //     customerMobile: widget.item.customerMobile,
      //     customerEmail: widget.item.customerEmail,
      //     createDatetime: widget.item.createDatetime,
      //     lastLoadedDatetime: DateTime.now(),
      //     lastUsedDatetime: widget.item.lastLoadedDatetime,
      //     isActive: widget.item.isActive,
      //     isDeleted: widget.item.isDeleted,
      //   ),
      // );

      db.cardRepository.updateBalance(
        widget.item.id,
        double.parse((double.parse(balanceController.text) +
                double.parse(amountController.text))
            .toString()),
        DateTime.now(),
      );

      db.cardLogRepository.createCardLog(
        CardLogModel(
          outletId: outletId,
          cardId: int.parse(cardIdController.text),
          customerName: customerNameController.text,
          customerMobile: int.parse(customerMobileController.text),
          customerEmail: customerEmailController.text,
          payMode: payMode,
          actionType: actionType,
          amount: double.parse(amountController.text),
          entryDatetime: DateTime.now(),
          loggedUserId: deviceId,
          newBalance: (double.parse(balanceController.text) +
                  double.parse(amountController.text))
              .toString(),
          terminalId: deviceId.toString(),
        ),
      );
      EasyLoading.showToast('Card loaded');
    } else if (actionType == "U") {
      //update card with balance

      // db.cardRepository.updateCard(
      //   CardModel(
      //     id: widget.item.id,
      //     outletId: outletId,
      //     cardId: widget.item.cardId,
      //     balance: double.parse((int.parse(balanceController.text) -
      //             int.parse(amountController.text))
      //         .toString()),
      //     customerName: customerNameController.text,
      //     customerMobile: int.parse(customerMobileController.text),
      //     customerEmail: customerEmailController.text,
      //     createDatetime: widget.item.createDatetime,
      //     lastLoadedDatetime: widget.item.lastLoadedDatetime,
      //     lastUsedDatetime: DateTime.now(),
      //     isActive: widget.item.isActive,
      //     isDeleted: widget.item.isDeleted,
      //   ),
      // );
      db.cardRepository.updateBalance(
        widget.item.id,
        double.parse((double.parse(balanceController.text) -
                double.parse(amountController.text))
            .toString()),
        DateTime.now(),
      );

      //create card log
      db.cardLogRepository.createCardLog(
        CardLogModel(
          outletId: outletId,
          cardId: int.parse(cardIdController.text),
          customerName: customerNameController.text,
          customerMobile: int.parse(customerMobileController.text),
          customerEmail: customerEmailController.text,
          payMode: payMode,
          actionType: actionType,
          amount: double.parse(amountController.text),
          entryDatetime: DateTime.now(),
          loggedUserId: deviceId,
          newBalance: (double.parse(balanceController.text) -
                  double.parse(amountController.text))
              .toString(),
          terminalId: deviceId.toString(),
        ),
      );
      EasyLoading.showToast('Card used');
    } else if (actionType == "R") {
      //delete old card
      db.cardRepository.deleteCard(widget.item.id);

      //create new card with balance
      db.cardRepository.createCard(
        CardModel(
          // id: widget.item.id,
          outletId: outletId,
          cardId: int.parse(cardIdController.text),
          balance: double.parse(balanceController.text),
          customerName: customerNameController.text,
          customerMobile: int.parse(customerMobileController.text),
          customerEmail: customerEmailController.text,
          createDatetime: DateTime.now(),
          lastLoadedDatetime: DateTime.now(),
          lastUsedDatetime: widget.item.lastUsedDatetime,
          isActive: widget.item.isActive,
          isDeleted: widget.item.isDeleted,
        ),
      );

      //create log in cardlog
      db.cardLogRepository.createCardLog(
        CardLogModel(
          outletId: outletId,
          cardId: int.parse(cardIdController.text),
          customerName: customerNameController.text,
          customerMobile: int.parse(customerMobileController.text),
          customerEmail: customerEmailController.text,
          payMode: payMode,
          actionType: actionType,
          amount: double.parse(amountController.text),
          entryDatetime: DateTime.now(),
          loggedUserId: deviceId,
          newBalance: amountController.text,
          terminalId: deviceId.toString(),
        ),
      );
      EasyLoading.showToast('Card replaced');
    }
    context.pop();
  }

  getTerminalIp() async {
    terminalIp = await Helpers.getWifiIPAddress();
    log(terminalIp.toString());
  }

  getuserId() async {
    deviceId = await Helpers.fetchDeviceId();
    log(deviceId.toString());
  }

  voidCard(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.cardRepository.updateBalance(
      widget.item.id,
      0.0,
      widget.item.lastLoadedDatetime as DateTime,
    );

    //create log in cardlog
    db.cardLogRepository.createCardLog(
      CardLogModel(
        outletId: outletId,
        cardId: int.parse(cardIdController.text),
        customerName: customerNameController.text,
        customerMobile: int.parse(customerMobileController.text),
        customerEmail: customerEmailController.text,
        payMode: payMode,
        actionType: "V",
        amount: double.parse(balanceController.text),
        entryDatetime: DateTime.now(),
        loggedUserId: deviceId,
        newBalance: "0.0",
        terminalId: deviceId.toString(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Card actions'),
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
                  PrimaryTextField(
                    validator: integerValidator,
                    hintText: 'Card number',
                    controller: cardIdController,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Balance: ${balanceController.text}",
                        style: KTextStyles.kTitle,
                      ),

                      //void card
                      SizedBox(
                        width: screenSize.width * 0.2,
                        height: 60,
                        child: CustomButton(
                          text: "Void card",
                          onPressed: () {
                            UtilDialog.showMyDialog(
                              context,
                              "Alert!",
                              "Do you really want to void this card?",
                              () {
                                //perform void action
                                voidCard(context);
                                EasyLoading.showToast('Card voided');
                                context.pop();
                                context.pop();
                              },
                              null,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  PrimaryTextField(
                    enable: false,
                    validator: nullCheckValidator,
                    hintText: 'Customer name',
                    controller: customerNameController,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  PrimaryTextField(
                    enable: false,
                    validator: integerValidator,
                    hintText: 'Customer mobile',
                    controller: customerMobileController,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  PrimaryTextField(
                    enable: false,
                    validator: emailValidator,
                    hintText: 'Customer email',
                    controller: customerEmailController,
                    keyboard: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.06),
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
                        hint: const Text("Choose a action"),
                        value: actionType,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (newValue) {
                          setState(() {
                            actionType = newValue;
                            if (newValue == "R") {
                              amountController.text = balanceController.text;
                            } else {
                              amountController.clear();
                            }
                          });
                        },
                        items: <String>[
                          'L',
                          'U',
                          'R',
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
                  PrimaryTextField(
                    validator: doubleValidator,
                    hintText: actionType == 'L'
                        ? 'Load amount'
                        : actionType == 'U'
                            ? 'Use amount'
                            : actionType == 'R'
                                ? 'Replace amount'
                                : 'Choose action type',
                    controller: amountController,
                    keyboard: TextInputType.number,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
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
                        hint: const Text("Choose a payment method"),
                        value: payMode,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (newValue) {
                          setState(() {
                            payMode = newValue;
                          });
                        },
                        items: <String>[
                          'Cash',
                          'Card',
                          'Credit',
                          'UPI',
                          'Cheque',
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
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
            text: "Save",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (actionType == "U") {
                  if (double.parse(amountController.text) <=
                      double.parse(balanceController.text)) {
                    createCardFn(context);
                  } else {
                    UtillSnackbar.showSnackBar(
                      context,
                      title: "Alert",
                      body: "Available balance is less",
                      isSuccess: false,
                    );
                  }
                } else {
                  createCardFn(context);
                }
              }
            }),
      ),
    );
  }
}
