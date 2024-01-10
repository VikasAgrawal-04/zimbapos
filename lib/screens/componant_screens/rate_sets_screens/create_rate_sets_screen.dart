import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';

class CreateRateSetsScreen extends StatefulWidget {
  const CreateRateSetsScreen({super.key});

  @override
  State<CreateRateSetsScreen> createState() => _CreateRateSetsScreenState();
}

class _CreateRateSetsScreenState extends State<CreateRateSetsScreen> {
  late final TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  createRateSetFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.rateSetsRepository
        .createRateSet(model: RateSetsModel(ratesetName: nameController.text));
    EasyLoading.showToast('Rate Set Created');
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Rate Sets'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: screenSize.height * 0.2),
            ElevatedButton(
              onPressed: () => createRateSetFn(context),
              child: const Text('Creta Rate Set'),
            )
          ],
        ),
      ),
    );
  }
}
