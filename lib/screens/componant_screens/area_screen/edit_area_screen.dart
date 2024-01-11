import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/area_model.dart';
import '../../../models/global_models/rate_sets_model.dart';

class EditAreaScreen extends StatefulWidget {
  final AreasModel item;
  const EditAreaScreen({
    super.key,
    required this.item,
  });

  @override
  State<EditAreaScreen> createState() => _EditAreaScreenState();
}

class _EditAreaScreenState extends State<EditAreaScreen> {
  //
  late final TextEditingController areaNameController;
  late final TextEditingController exchangePercentController;
  late int? selectedRateSetId;

  @override
  void initState() {
    super.initState();
    areaNameController = TextEditingController();
    exchangePercentController = TextEditingController();
    selectedRateSetId = widget.item.rateSetId ?? 0;

    areaNameController.text = widget.item.areaName.toString();
    exchangePercentController.text = widget.item.exchangePercent.toString();
    selectedRateSetId = widget.item.rateSetId;
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   // Your code to execute when dependencies change
  //   getAreaFn(item!.id);
  // }

  @override
  void dispose() {
    areaNameController.dispose();
    exchangePercentController.dispose();
    super.dispose();
  }

  //update area
  updateAreaFn(BuildContext context, int id) {
    final db = DatabaseCubit.dbFrom(context);
    log(selectedRateSetId.toString());
    db.areasRepository.updateArea(
      id,
      areaName: areaNameController.text,
      exchangePercent: double.parse(exchangePercentController.text),
      rateSetId: selectedRateSetId,
      isActive: true,
    );

    EasyLoading.showToast('Rate Set Updated');
    context.pop();
  }

  getAreaFn(int id) async {
    AreasModel? item;
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    item = await datatbaseCubit.areasRepository.getAreabyID(widget.item.id);
    areaNameController.text = item!.areaName.toString();
    exchangePercentController.text = item.exchangePercent.toString();
    selectedRateSetId = item.id;
  }

  Future<List<RateSetsModel?>> getAllRateSets() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final rateSets = await datatbaseCubit.rateSetsRepository.getRateSets();
    // log(rateSets.toString());
    for (var rateSet in rateSets) {
      log(rateSet!.ratesetName.toString());
      log(rateSet.id.toString());
    }
    return rateSets;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit area'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
              //extra charge percent
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
                height: 50,
                width: screenSize.width,
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
                          DropdownButton<int>(
                            value: selectedRateSetId,
                            hint: const Text("Choose a rate"),
                            onChanged: (newValue) {
                              setState(() {
                                selectedRateSetId = newValue;
                              });
                            },
                            items: rateSets.map((rateSet) {
                              return DropdownMenuItem<int>(
                                value: rateSet!.id,
                                child: Text(rateSet.ratesetName ?? 'error'),
                              );
                            }).toList(),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
              SizedBox(height: screenSize.height * 0.2),
              ElevatedButton(
                onPressed: () => updateAreaFn(context, widget.item.id),
                child: const Text('Update area'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
