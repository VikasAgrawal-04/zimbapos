import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/rate_sets_model.dart';
import '../../../widgets/custom_button.dart';
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
  late final TextEditingController areaNameController;
  late final TextEditingController exchangePercentController;
  String? selectedRateSetId;

  @override
  void initState() {
    super.initState();
    areaNameController = TextEditingController();
    exchangePercentController = TextEditingController();
  }

  @override
  void dispose() {
    areaNameController.dispose();
    exchangePercentController.dispose();
    super.dispose();
  }

  createAreaFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.areasRepository.createArea(
      model: AreasModel(
        areaName: areaNameController.text,
        extraChargePercent: double.parse(exchangePercentController.text),
        rateSetId: selectedRateSetId,
      ),
    );
    EasyLoading.showToast('Area Created');
    context.pop();
  }

  Future<List<RateSetsModel?>> getAllRateSets() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final rateSets = await datatbaseCubit.rateSetsRepository.getRateSets();
    // log(rateSets.toString());
    for (var rateSet in rateSets) {
      log(rateSet!.ratesetName.toString());
    }
    return rateSets;
  }

  //
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create area'),
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
                    hintText: 'Area name',
                    controller: areaNameController,
                    onChanged: (value) {},
                  ),
                  // TextField(
                  //   controller: areaNameController,
                  //   keyboardType: TextInputType.text,
                  //   decoration: const InputDecoration(
                  //     label: Text('Area name'),
                  //     border: OutlineInputBorder(),
                  //   ),
                  // ),
                  SizedBox(height: screenSize.height * 0.02),
                  //exchange percent
                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Extra charge percent',
                    controller: exchangePercentController,
                    onChanged: (value) {},
                  ),
                  // TextField(
                  //   controller: exchangePercentController,
                  //   keyboardType: TextInputType.number,
                  //   decoration: const InputDecoration(
                  //     label: Text('Exchange percent'),
                  //     border: OutlineInputBorder(),
                  //   ),
                  // ),
                  SizedBox(height: screenSize.height * 0.02),
                  //dropdown for ratesets
                  SizedBox(
                    // height: 50,
                    width: screenSize.width,
                    child: FutureBuilder<List<RateSetsModel?>>(
                      future: getAllRateSets(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator.adaptive();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          final rateSets = snapshot.data ?? [];

                        return Column(
                          children: [
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
                                  value: selectedRateSetId,
                                  isExpanded: true,
                                  hint: const Text("Choose a rate"),
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedRateSetId = newValue;
                                    });
                                  },
                                  items: rateSets.map((rateSet) {
                                    return DropdownMenuItem<String>(
                                      value: rateSet!.ratesetId,
                                      child:
                                          Text(rateSet.ratesetName ?? 'error'),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
                SizedBox(height: screenSize.height * 0.2),
                // ElevatedButton(
                //   onPressed: () => createAreaFn(context),
                //   child: const Text('Create area'),
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
              if (selectedRateSetId != null) {
                createAreaFn(context);
              } else {
                UtillSnackbar.showSnackBar(
                  context,
                  title: "Alert",
                  body: "Please choose a area",
                  isSuccess: false,
                );
              }
            }
          }),
    );
  }
}
