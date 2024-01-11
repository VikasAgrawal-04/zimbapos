import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

import '../../../widgets/my_alert_widget.dart';

class RateSetOverviewScreen extends StatefulWidget {
  const RateSetOverviewScreen({super.key});

  @override
  State<RateSetOverviewScreen> createState() => _RateSetOverviewScreenState();
}

class _RateSetOverviewScreenState extends State<RateSetOverviewScreen> {
  Stream<List<RateSetsModel>> streamRateSet() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    return datatbaseCubit.rateSetsRepository.streamRateSets();
  }

  toggleFn(int id, bool value) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.rateSetsRepository.changeActive(id, value);
  }

  deleteFn(int id) {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    datatbaseCubit.rateSetsRepository.deleteRateSetbyID(id);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate Sets'),
        actions: [
          IconButton(
            onPressed: () => context.push(AppScreen.createRateSetsScreen.path),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: StreamBuilder<List<RateSetsModel>>(
        stream: streamRateSet(),
        builder: (context, snapshot) {
          final list = snapshot.data;
          if (list == null || list.isEmpty) {
            return const Center(
              child: Text('No Rate Set'),
            );
          }
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(list[index].ratesetName ?? 'Test'),
              subtitle:
                  Text((list[index].isActive ?? false) ? 'Active' : "InActive"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Switch.adaptive(
                    value: list[index].isActive ?? false,
                    onChanged: (value) => toggleFn(list[index].id, value),
                  ),
                  SizedBox(width: screenSize.width * 0.025),
                  //edit
                  IconButton(
                    onPressed: () => context.push(
                      AppScreen.editRateSetScreen.path,
                      //passing data to edit screen
                      extra: list[index],
                    ),
                    icon: const Icon(
                      Icons.edit,
                      size: 30,
                    ),
                  ),

                  //delete
                  IconButton(
                    onPressed: () => UtilDialog.showMyDialog(
                      context,
                      "Alert",
                      "Are you sure to delete '${list[index].ratesetName}'?",
                      //this is for ok button
                      () {
                        deleteFn(list[index].id);
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
