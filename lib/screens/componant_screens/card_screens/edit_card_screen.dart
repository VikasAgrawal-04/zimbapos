import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/card_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class EditCardScreen extends StatefulWidget {
  final CardModel item;
  const EditCardScreen({
    super.key,
    required this.item,
  });

  @override
  State<EditCardScreen> createState() => _EditCardScreenState();
}

class _EditCardScreenState extends State<EditCardScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController cardIdController;
  late final TextEditingController balanceController;
  late final TextEditingController customerNameController;
  late final TextEditingController customerMobileController;
  late final TextEditingController customerEmailController;
  String? outletId;

  @override
  void initState() {
    super.initState();
    cardIdController = TextEditingController();
    balanceController = TextEditingController();
    customerNameController = TextEditingController();
    customerMobileController = TextEditingController();
    customerEmailController = TextEditingController();
    outletId = BlocProvider.of<DatabaseCubit>(context).outletId;

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
    super.dispose();
  }

  createCardFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.cardRepository.updateCard(
      CardModel(
        id: widget.item.id,
        outletId: outletId,
        cardId: int.parse(cardIdController.text),
        balance: double.parse(balanceController.text),
        customerName: customerNameController.text,
        customerMobile: int.parse(customerMobileController.text),
        customerEmail: customerEmailController.text,
        createDatetime: widget.item.createDatetime,
        lastLoadedDatetime: widget.item.lastLoadedDatetime,
        lastUsedDatetime: widget.item.lastUsedDatetime,
        isActive: widget.item.isActive,
        isDeleted: widget.item.isDeleted,
      ),
    );
    EasyLoading.showToast('Card Updated');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit card'),
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
                    hintText: 'Card id',
                    controller: cardIdController,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  PrimaryTextField(
                    // validator: integerValidator,
                    enable: false,
                    hintText: 'Card balance',
                    controller: balanceController,
                    keyboard: TextInputType.number,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Customer name',
                    controller: customerNameController,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  PrimaryTextField(
                    validator: integerValidator,
                    hintText: 'Customer mobile',
                    controller: customerMobileController,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  PrimaryTextField(
                    validator: emailValidator,
                    hintText: 'Customer email',
                    controller: customerEmailController,
                    keyboard: TextInputType.emailAddress,
                    onChanged: (value) {},
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
                createCardFn(context);
              }
            }),
      ),
    );
  }
}
