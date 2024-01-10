import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/area_model.dart';
import '../../../models/global_models/rate_sets_model.dart';

class EditAreaScreen extends StatefulWidget {
  const EditAreaScreen({
    super.key,
  });

  @override
  State<EditAreaScreen> createState() => _EditAreaScreenState();
}

class _EditAreaScreenState extends State<EditAreaScreen> {
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

  getAreaFn(int id) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.areasRepository.getAreabyID(id);
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

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
