import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../helpers/validators.dart';
import '../../../models/global_models/tax_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateTaxScreen extends StatefulWidget {
  const CreateTaxScreen({super.key});

  @override
  State<CreateTaxScreen> createState() => _CreateTaxScreenState();
}

class _CreateTaxScreenState extends State<CreateTaxScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController taxNameController;
  late final TextEditingController taxPercentController;
  String? taxType;

  @override
  void initState() {
    super.initState();
    taxNameController = TextEditingController();
    taxPercentController = TextEditingController();
  }

  @override
  void dispose() {
    taxNameController.dispose();
    taxPercentController.dispose();
    super.dispose();
  }

  createTaxFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.taxesRepository.createTax(
      model: TaxModel(
        taxName: taxNameController.text,
        taxType: taxType,
        taxPercent: int.parse(taxPercentController.text),
      ),
    );
    EasyLoading.showToast('Tax Created');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit tax'),
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
                //area name
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Tax name',
                  controller: taxNameController,
                  onChanged: (value) {},
                ),
                SizedBox(height: screenSize.height * 0.02),

                //tax percent
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Tax percent',
                  controller: taxPercentController,
                  onChanged: (value) {},
                ),
                SizedBox(height: screenSize.height * 0.02),

                //dropdown for tax type
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
                      hint: const Text("Choose a tax"),
                      value: taxType,
                      icon: const Icon(Icons.arrow_drop_down),
                      iconSize: 24,
                      elevation: 16,
                      onChanged: (newValue) {
                        setState(() {
                          taxType = newValue;
                        });
                      },
                      items: <String>[
                        'V',
                        'G',
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
                // ElevatedButton(
                //   onPressed: () => updateAreaFn(context, widget.item.id),
                //   child: const Text('Update area'),
                // )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomButton(
          text: "Save",
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              if (taxType != null) {
                createTaxFn(context);
              } else {
                UtillSnackbar.showSnackBar(
                  context,
                  title: "Alert",
                  body: "Please choose a tax type",
                  isSuccess: false,
                );
              }
            }
          }),
    );
  }
}
