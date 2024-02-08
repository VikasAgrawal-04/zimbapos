// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/global/utils/helpers/my_secure_storage.dart';
import 'package:zimbapos/models/global_models/terminal_model.dart';
import 'package:zimbapos/services/terminal_config_service/terminal_config_service.dart';
import 'package:zimbapos/services/terminal_config_service/terminal_congfig_service_impl.dart';
part 'register_terminal_state.dart';

class RegisterTerminalCubit extends Cubit<RegiState> {
  RegisterTerminalCubit()
      : super(RegiState(
          screenState: ScreenState.initial,
          state: RegistrationState.initial,
        )) {
    inIt();
  }

  final TerminalConfigService _terminalRepository = TerminalConfigServiceImpl();
  late int? terminalId;
  late String? errorMessage;
  late final TextEditingController controller;
  late final List<TerminalModel> terminalList;

  inIt() async {
    emit(state.copyWith(screenState: ScreenState.loading));
    controller = TextEditingController();
    MySecureStorage storage = MySecureStorage();
    terminalId = await storage.getTerminalID();
    if (terminalId != null) {
      emit(state.copyWith(screenState: ScreenState.idFound));
    } else {
      getTerminalList();
    }
  }

  getTerminalList() async {
    try {
      final data = await _terminalRepository.getAllTerminals();
      data.fold((failure) {
        errorMessage = 'Something went Wrong';
        emit(state.copyWith(screenState: ScreenState.error));
      }, (success) {
        terminalList = success;
        emit(state.copyWith(screenState: ScreenState.listRecieved));
      });
    } catch (e) {
      errorMessage = 'Something went Wrong';
      emit(state.copyWith(screenState: ScreenState.error));
    }
  }

  selectTerminal(int value) {
    terminalId = value;
    emit(state.copyWith());
  }

  saveTerminalID() async {
    emit(state.copyWith(state: RegistrationState.loading));
    if (terminalId != null && terminalId != -1) {
      try {
        final response =
            await _terminalRepository.updateTerminal(terminalID: terminalId!);
        response.fold((l) {
          EasyLoading.showToast(
            l.toString(),
            toastPosition: EasyLoadingToastPosition.bottom,
          );
          emit(state.copyWith(state: RegistrationState.error));
        }, (r) {
          EasyLoading.showToast(r);
          emit(state.copyWith(state: RegistrationState.completed));
        });
      } catch (e) {
        log(e.toString());
      }
    } else {
      EasyLoading.showToast(
        'Please Select Terminal',
        toastPosition: EasyLoadingToastPosition.bottom,
      );
      emit(state.copyWith(state: RegistrationState.initial));
    }
  }
}
