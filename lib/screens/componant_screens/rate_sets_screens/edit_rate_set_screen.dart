import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/helpers/validators.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/rate_sets_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        id: widget.item.id,
        ratesetName: nameController.text,
        ratesetId: widget.item.ratesetId,
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
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //rfate set name
              PrimaryTextField(
                validator: nullCheckValidator,
                hintText: 'Rate set name',
                controller: nameController,
                onChanged: (value) {},
              ),
              // TextField(
              //   controller: nameController,
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //   ),
              // ),
              SizedBox(height: screenSize.height * 0.2),
              // ElevatedButton(
              //   onPressed: () => updateRateSetFn(context),
              //   child: const Text('Update Rate Set'),
              // )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomButton(
          text: "Save",
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              updateRateSetFn(context);
            }
          }),
    );
  }
}
