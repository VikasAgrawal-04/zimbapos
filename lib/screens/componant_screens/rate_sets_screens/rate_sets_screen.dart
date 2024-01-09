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

  @override
  Widget build(BuildContext context) {
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
          print(list.length);
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(list[index].ratesetName ?? ''),
              subtitle: const Text('isActive'),
            ),
          );
        },
      ),
    );
  }
}
