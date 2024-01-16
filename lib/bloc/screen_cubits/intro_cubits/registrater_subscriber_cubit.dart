import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/intro_cubits/registrater_state.dart';
import 'package:zimbapos/models/user_models/subscriber_model.dart';

class RegisterSubscriberCubit extends Cubit<RegisterSubscriberState> {
  RegisterSubscriberCubit() : super(InitialRegistration());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  saveFn(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      emit(LoadingRegistration());
      final dbCubit = DatabaseCubit.dbFrom(context).subsscriberRepo;
      dbCubit.createSubScription(
        model: SubscriberModel(
            email: emailController.text,
            mobile: mobileController.text,
            name: nameController.text),
      );
      await Future.delayed(const Duration(seconds: 2));
      emit(CompleteRegistration());
    }
  }
}
