import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/card_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateCardScreen extends StatefulWidget {
  const CreateCardScreen({super.key});

  @override
  State<CreateCardScreen> createState() => _CreateCardScreenState();
}

class _CreateCardScreenState extends State<CreateCardScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController cardIdController;
  late final TextEditingController balanceDecimalController;
  late final TextEditingController customerNameController;
  late final TextEditingController customerMobileController;
  late final TextEditingController customerEmailController;
  String? outletId;

  @override
  void initState() {
    super.initState();
    cardIdController = TextEditingController();
    balanceDecimalController = TextEditingController();
    customerNameController = TextEditingController();
    customerMobileController = TextEditingController();
    customerEmailController = TextEditingController();
    outletId = BlocProvider.of<DatabaseCubit>(context).outletId;
  }

  @override
  void dispose() {
    cardIdController.dispose();
    balanceDecimalController.dispose();
    customerNameController.dispose();
    customerMobileController.dispose();
    customerEmailController.dispose();
    super.dispose();
  }

  createCardFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.cardRepository.createCard(
      CardModel(
        outletId: outletId,
        cardId: int.parse(cardIdController.text),
        balanceDecimal: int.parse(balanceDecimalController.text),
        customerName: customerNameController.text,
        customerMobile: int.parse(customerMobileController.text),
        customerEmail: customerEmailController.text,
        createDatetime: DateTime.now(),
      ),
    );
    EasyLoading.showToast('Card Created');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create card'),
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
                    validator: integerValidator,
                    hintText: 'Card balance decimal',
                    controller: balanceDecimalController,
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
