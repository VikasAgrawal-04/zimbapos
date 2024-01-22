import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateRateSetsScreen extends StatefulWidget {
  const CreateRateSetsScreen({super.key});

  @override
  State<CreateRateSetsScreen> createState() => _CreateRateSetsScreenState();
}

class _CreateRateSetsScreenState extends State<CreateRateSetsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
    return SafeArea(
      child: Scaffold(
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
                //rate set name
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
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
            text: "Save",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                createRateSetFn(context);
              }
            }),
      ),
    );
  }
}
