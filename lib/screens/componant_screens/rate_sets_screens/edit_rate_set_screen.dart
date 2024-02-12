import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_state.dart';
import 'package:zimbapos/helpers/validators.dart';

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
  @override
  void initState() {
    super.initState();
    context.read<RateSetScreenCubit>().fillControllers(widget.item);
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: BlocBuilder<RateSetScreenCubit, RateSetScreenState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Edit Rate Sets'),
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
                      controller: state.rateSetNameController,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: screenSize.height * 0.2),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CustomButton(
                text: "Save",
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await context.read<RateSetScreenCubit>().updateRateSet(
                          RateSetsModel(
                            ratesetId: widget.item.ratesetId,
                            ratesetName: state.rateSetNameController.text,
                          ),
                        );

                    context.pop();
                  }
                }),
          );
        },
      ),
    );
  }
}
