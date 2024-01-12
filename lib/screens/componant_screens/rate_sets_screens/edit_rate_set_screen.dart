import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/rate_sets_model.dart';

class EditRateSetScreen extends StatefulWidget {
  final RateSetsModel item;
  const EditRateSetScreen({
    super.key,
    required this.item,
  });

  @override
  State<EditRateSetScreen> createState() => _EditRateSetScreenState();
}

class _EditRateSetScreenState extends State<EditRateSetScreen> {
  //
  late final TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();

    nameController.text = widget.item.ratesetName.toString();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  updateRateSetFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.rateSetsRepository.updateRateSet(
      model: RateSetsModel(
        ratesetName: nameController.text,
        ratesetId: widget.item.id,
      ),
    );
    EasyLoading.showToast('Rate Set Updated');
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
              onPressed: () => updateRateSetFn(context),
              child: const Text('Update Rate Set'),
            )
          ],
        ),
      ),
    );
  }
}
