import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

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
                  IconButton(
                    onPressed: () => deleteFn(list[index].id),
                    icon: const Icon(
                      Icons.delete,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.025),
                  Switch.adaptive(
                    value: list[index].isActive ?? false,
                    onChanged: (value) => toggleFn(list[index].id, value),
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
