import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_state.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_state.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateAreasScreen extends StatefulWidget {
  const CreateAreasScreen({super.key});

  @override
  State<CreateAreasScreen> createState() => _CreateAreasScreenState();
}

class _CreateAreasScreenState extends State<CreateAreasScreen> {
  //
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Create area'),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<AreasScreenCubit, AreasScreenState>(
          builder: (context, state) {
            return Padding(
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
                      hintText: 'Area name',
                      controller: state.areaNameController,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: screenSize.height * 0.02),
                    //extra percent
                    PrimaryTextField(
                      validator: nullCheckValidator,
                      hintText: 'Extra charge percent',
                      controller: state.extraChargePercentController,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: screenSize.height * 0.02),
                    //dropdown for ratesets
                    BlocBuilder<RateSetScreenCubit, RateSetScreenState>(
                      builder: (context, state) {
                        return CustomDropDown<String>(
                          title: "Rate set",
                          items: state.rateSetList
                              .map((e) => e.ratesetName ?? 'error')
                              .toList(),
                          itemValues: state.rateSetList
                              .map((e) => e.ratesetId ?? "null")
                              .toList(),
                          value: context
                              .read<AreasScreenCubit>()
                              .state
                              .selectedRateSetId,
                          hint: "Choose a Rate set",
                          onChanged: (value) {
                            context
                                .read<AreasScreenCubit>()
                                .onRateSetChange(value);
                          },
                        );
                      },
                    ),
                    SizedBox(height: screenSize.height * 0.2),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<AreasScreenCubit, AreasScreenState>(
        builder: (context, state) {
          return CustomButton(
              text: "Save",
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (state.selectedRateSetId != null) {
                    await context.read<AreasScreenCubit>().createArea(
                          AreasModel(
                            areaName: state.areaNameController.text,
                            extraChargePercent: double.parse(
                                state.extraChargePercentController.text),
                            rateSetId: state.selectedRateSetId,
                          ),
                        );

                    context.pop();
                  } else {
                    UtillSnackbar.showSnackBar(
                      context,
                      title: "Alert",
                      body: "Please choose a rate set",
                      isSuccess: false,
                    );
                  }
                }
              });
        },
      ),
    ));
  }
}
