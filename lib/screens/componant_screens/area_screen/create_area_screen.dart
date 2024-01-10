import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/rate_sets_model.dart';

class CreateAreasScreen extends StatefulWidget {
  const CreateAreasScreen({super.key});

  @override
  State<CreateAreasScreen> createState() => _CreateAreasScreenState();
}

class _CreateAreasScreenState extends State<CreateAreasScreen> {
  //
  late final TextEditingController areaNameController;
  late final TextEditingController exchangePercentController;
  int? selectedRateSetId;

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
        exchangePercent: double.parse(exchangePercentController.text),
        rateSetId: selectedRateSetId ?? 1,
      ),
    );
    log(AreasModel(
      areaName: areaNameController.text,
      exchangePercent: double.parse(exchangePercentController.text),
      rateSetId: selectedRateSetId ?? 1,
    ).toString());
    EasyLoading.showToast('Rate Set Created');
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create area'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: screenSize.height * 0.04),
            //area name
            TextField(
              controller: areaNameController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text('Area name'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: screenSize.height * 0.02),
            //exchange percent
            TextField(
              controller: exchangePercentController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Exchange percent'),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: screenSize.height * 0.02),
            //dropdown for ratesets
            SizedBox(
              width: screenSize.width,
              height: screenSize.height * 0.2,
              child: FutureBuilder<List<RateSetsModel?>>(
                future: getAllRateSets(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator.adaptive();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    final rateSets = snapshot.data ?? [];

                    return Column(
                      children: [
                        Expanded(
                          child: DropdownButton<int>(
                            value: selectedRateSetId,
                            onChanged: (newValue) {
                              setState(() {
                                selectedRateSetId = newValue;
                              });
                            },
                            items: rateSets.map((rateSet) {
                              return DropdownMenuItem<int>(
                                value: rateSet!.ratesetId,
                                child: Text(rateSet.ratesetName ?? ''),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
            SizedBox(height: screenSize.height * 0.2),
            ElevatedButton(
              onPressed: () => createAreaFn(context),
              child: const Text('Create area'),
            )
          ],
        ),
      ),
    );
  }
}
