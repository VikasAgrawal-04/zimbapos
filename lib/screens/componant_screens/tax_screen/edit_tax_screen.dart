import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/tax_screen_cubits/tax_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/tax_screen_cubits/tax_state.dart';
import 'package:zimbapos/models/global_models/tax_model.dart';

import '../../../constants/kcolors.dart';
import '../../../helpers/validators.dart';
import '../../../widgets/custom_button/custom_button.dart';
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
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<TaxScreenCubit, TaxScreenState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  //header
                  Container(
                    width: double.infinity,
                    height: screenSize.height * 0.15,
                    decoration: BoxDecoration(
                      color: KColors.blackColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Edit Tax',
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: Image.asset(
                          "assets/icons/back.png",
                          height: 5.h,
                        ),
                      ),
                    ],
                  ),

                  //form
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 12),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: screenSize.height * 0.04),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Tax Name",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: nullCheckValidator,
                                  // hintText: 'Tax name',
                                  controller: state.taxNameController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //tax percent
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Tax Percent",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: doubleValidator,
                                  // hintText: 'Tax name',
                                  controller: state.taxPercentController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),

                          //dropdown for tax type
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Tax Type",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: CustomDropDown<String>(
                                  // title: "Tax type",
                                  hint: "Select Tax type",
                                  items: const ['V', 'G'],
                                  value: state.taxType,
                                  onChanged: context
                                      .read<TaxScreenCubit>()
                                      .onTaxTypeChange,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),
                          //buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //cancel
                              CustomButtonNew(
                                width: 68.sp,
                                height: 28.sp,
                                text: "Cancel",
                                color: KColors.blackColor,
                                onTap: () async {
                                  //clear controllers and pop
                                  context.pop();
                                },
                              ),

                              //save
                              CustomButtonNew(
                                text: "Submit",
                                width: 68.sp,
                                height: 28.sp,
                                color: theme.primaryColor,
                                onTap: () async {
                                  if (_formKey.currentState!.validate()) {
                                    if (state.taxType != null) {
                                      await context
                                          .read<TaxScreenCubit>()
                                          .updateTax(
                                            TaxModel(
                                              taxId: widget.item.taxId,
                                              taxName:
                                                  state.taxNameController.text,
                                              taxType: state.taxType,
                                              taxPercent: double.parse(state
                                                  .taxPercentController.text),
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
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
