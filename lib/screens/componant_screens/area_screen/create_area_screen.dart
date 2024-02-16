import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_state.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_state.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

import '../../../constants/kcolors.dart';
import '../../../widgets/custom_button/custom_button.dart';
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
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocBuilder<AreasScreenCubit, AreasScreenState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
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
                        'Create Area',
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

                  //form below
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 12),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: screenSize.height * 0.04),
                          //area name
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Area Name',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: nullCheckValidator,
                                  // hintText: 'Area name',
                                  controller: state.areaNameController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),
                          //extra charge percent
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Extra Charge Percent %',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: nullCheckValidator,
                                  // hintText: 'Extra charge percent',
                                  controller:
                                      state.extraChargePercentController,
                                  onChanged: (value) {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),
                          //dropdown for ratesets
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Rate Set',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              //drop down
                              Expanded(
                                child: BlocBuilder<RateSetScreenCubit,
                                    RateSetScreenState>(
                                  builder: (context, state) {
                                    final activeRateSets = state.rateSetList
                                        .where((e) => e.isActive ?? false)
                                        .toList();
                                    return CustomDropDown<String>(
                                      // title: "Rate set",
                                      items: activeRateSets
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
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.2),

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
                                    if (state.selectedRateSetId != null) {
                                      await context
                                          .read<AreasScreenCubit>()
                                          .createArea(
                                            AreasModel(
                                              areaName:
                                                  state.areaNameController.text,
                                              extraChargePercent: double.parse(
                                                  state
                                                      .extraChargePercentController
                                                      .text),
                                              rateSetId:
                                                  state.selectedRateSetId,
                                            ),
                                          );

                                      context.pop();
                                    } else {
                                      UtillSnackbar.showSnackBar(
                                        context,
                                        title: "Alert",
                                        body: "Please choose a area",
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
            ),
          );
        },
      ),
    );
  }
}
