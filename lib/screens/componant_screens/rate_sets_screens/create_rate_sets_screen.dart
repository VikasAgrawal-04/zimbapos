import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_state.dart';
import 'package:zimbapos/helpers/validators.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateRateSetsScreen extends StatefulWidget {
  const CreateRateSetsScreen({super.key});

  @override
  State<CreateRateSetsScreen> createState() => _CreateRateSetsScreenState();
}

class _CreateRateSetsScreenState extends State<CreateRateSetsScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<RateSetScreenCubit, RateSetScreenState>(
        builder: (context, state) {
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
                    //rate set name
                    PrimaryTextField(
                      validator: nullCheckValidator,
                      hintText: 'Rate set name',
                      controller: state.rateSetNameController,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CustomButton(
                text: "Save",
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await context.read<RateSetScreenCubit>().createRateSet();

                    context.pop();
                  }
                }),
          );
        },
      ),
    );
  }
}
