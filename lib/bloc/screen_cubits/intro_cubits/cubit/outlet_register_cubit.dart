import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/bloc/global_cubits/device_control_cubit.dart';
import 'package:zimbapos/global/utils/helpers/my_secure_storage.dart';

import '../../../../models/user_models/subscriber_model.dart';

part 'outlet_register_state.dart';

class OutletRegisterCubit extends Cubit<OutletRegisterState> {
  final DatabaseCubit databaseCubit;
  OutletRegisterCubit({required this.databaseCubit})
      : super(SubscriptionInfoInit()) {
    getSubsModel();
  }

  final PageController pageController = PageController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController outletIdController = TextEditingController();

  String? outletId;

  saveFn() async {
    if (formKey.currentState!.validate()) {
      emit(SubscriptionInfoLoading());
      final SubscriberModel model = SubscriberModel(
          email: emailController.text,
          mobile: mobileController.text,
          name: nameController.text);
      databaseCubit.state!.subsscriberRepo.createSubScription(model: model);

      emit(SubscriptionInfoModel(model: model));
      pageController.nextPage(
        duration: const Duration(milliseconds: 200),
        curve: Easing.linear,
      );
    }
  }

  getSubsModel() async {
    emit(SubscriptionInfoInit());
    final data = await databaseCubit.state!.subsscriberRepo.getSubsModel();
    if (data != null) {
      emailController.text = data.email ?? '';
      mobileController.text = data.mobile ?? '';
      nameController.text = data.name ?? '';
      emit(SubscriptionInfoModel(model: data));
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    } else {
      emit(OutletRegisterInitial());
    }
  }

  getOutletID() async {
    emit(OutletRegisterLoading());
    MySecureStorage secureStorage = MySecureStorage();
    outletId = await secureStorage.getOutletID();
    if (outletId != null) {
      outletIdController.text = outletId ?? '';
    }
  }

  saveOutletIdFn(BuildContext context) async {
    MySecureStorage secureStorage = MySecureStorage();
    secureStorage.setOutletId(outletID: outletIdController.text);
    // removeAllAndPush(context, AppScreen.homeScreen.path);
    BlocProvider.of<DeviceControlCubit>(context).getObject();
  }
}
