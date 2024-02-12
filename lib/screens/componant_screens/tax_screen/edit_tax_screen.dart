import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/tax_screen_cubits/tax_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/tax_screen_cubits/tax_state.dart';
import 'package:zimbapos/models/global_models/tax_model.dart';

import '../../../helpers/validators.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class EditTaxScreen extends StatefulWidget {
  final TaxModel item;
  const EditTaxScreen({
    super.key,
    required this.item,
  });

  @override
  State<EditTaxScreen> createState() => _EditTaxScreenState();
}

class _EditTaxScreenState extends State<EditTaxScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    context.read<TaxScreenCubit>().fillControllers(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit tax'),
        ),
        body: BlocBuilder<TaxScreenCubit, TaxScreenState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: screenSize.height * 0.04),
                      //tax name
                      PrimaryTextField(
                        validator: nullCheckValidator,
                        hintText: 'Tax name',
                        controller: state.taxNameController,
                        onChanged: (value) {},
                      ),

                      SizedBox(height: screenSize.height * 0.02),
                      //Tax percent
                      PrimaryTextField(
                        validator: nullCheckValidator,
                        hintText: 'Tax percent',
                        controller: state.taxPercentController,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      //dropdown for tax type
                      CustomDropDown<String>(
                        title: "Tax type",
                        hint: "Select Tax type",
                        items: const ['V', 'G'],
                        value: state.taxType,
                        onChanged:
                            context.read<TaxScreenCubit>().onTaxTypeChange,
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<TaxScreenCubit, TaxScreenState>(
          builder: (context, state) {
            return CustomButton(
                text: "Save",
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    if (state.taxType != null) {
                      await context.read<TaxScreenCubit>().updateTax(
                            TaxModel(
                              taxId: widget.item.taxId,
                              taxName: state.taxNameController.text,
                              taxType: state.taxType,
                              taxPercent:
                                  double.parse(state.taxPercentController.text),
                            ),
                          );

                      context.pop();
                    } else {
                      UtillSnackbar.showSnackBar(
                        context,
                        title: "Alert",
                        body: "Please choose a tax type",
                        isSuccess: false,
                      );
                    }
                  }
                });
          },
        ),
      ),
    );
  }
}
