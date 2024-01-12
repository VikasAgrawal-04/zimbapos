import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/widgets/my_alert_widget.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

class AreasOverviewScreen extends StatefulWidget {
  const AreasOverviewScreen({super.key});

  @override
  State<AreasOverviewScreen> createState() => _AreasOverviewScreenState();
}

class _AreasOverviewScreenState extends State<AreasOverviewScreen> {
  //
  Stream<List<AreasModel>> streamForAreas() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    // log(datatbaseCubit.rateSetsRepository.getRateSets().toString());
    return datatbaseCubit.areasRepository.streamAreas();
  }

  //fetch ratesets and compare their ids and show ratesetname in area list
  Future<List<RateSetsModel?>> getAllRateSets() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final rateSets = await datatbaseCubit.rateSetsRepository.getRateSets();
    // log(rateSets.toString());
    for (var rateSet in rateSets) {
      log(rateSet!.ratesetName.toString());
    }
    return rateSets;
  }

  toggleAreaFn(int id, bool value) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.areasRepository.changeActiveArea(id, value);
  }

  deleteAreaFn(int id) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.areasRepository.deleteAreabyID(id);
  }

  //
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Areas'),
        actions: [
          IconButton(
            onPressed: () => context.push(AppScreen.createAreasScreen.path),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: StreamBuilder<List<AreasModel>>(
        stream: streamForAreas(),
        builder: (context, snapshot) {
          final list = snapshot.data;
          if (list == null || list.isEmpty) {
            return const Center(
              child: Text('No areas available,create one.'),
            );
          }
          return ListView.builder(
            itemCount: list.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => ListTile(
              title: Text(list[index].areaName ?? 'Test'),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //exchange percent
                  Text(
                    "Rate:  ${list[index].exchangePercent.toString()}%",
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                      (list[index].isActive ?? false) ? 'Active' : "In-Active"),
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: screenSize.width * 0.025),
                  Switch.adaptive(
                    value: list[index].isActive ?? false,
                    onChanged: (value) => toggleAreaFn(list[index].id, value),
                  ),
                  SizedBox(width: screenSize.width * 0.025),
                  //edit
                  IconButton(
                    onPressed: () => context.push(
                      AppScreen.editAreaScreen.path,
                      //passing data to edit screen
                      extra: list[index],
                    ),
                    icon: const Icon(
                      Icons.edit,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.025),
                  //delete
                  IconButton(
                    onPressed: () => UtilDialog.showMyDialog(
                      context,
                      "Alert",
                      "Are you sure to delete '${list[index].areaName}'?",
                      //this is for ok button
                      () {
                        deleteAreaFn(list[index].id);
                        context.pop();
                      },
                      // this is for cancel button sending null will perform default pop() action
                      null,
                    ),
                    icon: const Icon(
                      Icons.delete,
                      size: 30,
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
