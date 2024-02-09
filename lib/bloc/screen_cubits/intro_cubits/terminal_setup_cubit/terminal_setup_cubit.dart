import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/bloc/global_cubits/device_control_cubit.dart';
import 'package:zimbapos/global/utils/helpers/my_secure_storage.dart';

import '../../../../global/utils/helpers/helpers.dart';
part 'terminal_setup_state.dart';

class TerminalSetupCubit extends Cubit<DeviceTerminalConfigurationState> {
  TerminalSetupCubit()
      : super(DeviceTerminalConfigurationState(
          tState: TerminalConfigurationState.initial,
          ipState: IpConfigState.notInitial,
        )) {
    init();
    ipController = TextEditingController();
    pageController = PageController();
    ipFormKey = GlobalKey<FormState>();
  }
  late bool? terminalType;
  int? terminalID;
  String? ipAddress;
  bool initialLoaded = false;
  late final TextEditingController ipController;
  late final PageController pageController;
  late final GlobalKey<FormState> ipFormKey;

  init() async {
    emit(state.copyWith(tState: TerminalConfigurationState.loading));
    final MySecureStorage storage = MySecureStorage();
    terminalType = await storage.getmainTerminal();
    initialLoaded = true;
    if (terminalType == null) {
      emit(state.copyWith());
    } else if (terminalType == true) {
      emit(state.copyWith(tState: TerminalConfigurationState.mainServer));
    } else {
      emit(state.copyWith(tState: TerminalConfigurationState.subTerminal));
    }
  }

  changeTerminalType(bool value) {
    terminalType = value;
    if (terminalType == true) {
      emit(state.copyWith(tState: TerminalConfigurationState.mainServer));
    } else {
      emit(state.copyWith(tState: TerminalConfigurationState.subTerminal));
    }
  }

  saveFn(BuildContext context) async {
    emit(state.copyWith(tState: TerminalConfigurationState.loading));
    final MySecureStorage storage = MySecureStorage();
    if (terminalType != null) {
      await storage.setTerminalType(terminalType: terminalType!);
      print('Save Fn  $terminalType');
      if (terminalType == true) {
        // emit(state.copyWith(tState: TerminalConfigurationState.mainServer));
        emit(state.copyWith(tState: TerminalConfigurationState.completed));
        // context.read<DeviceControlCubit>().getObject();
      } else {
        ipAddress = await storage.getServerIP();
        if (ipAddress != null) ipController.text = ipAddress!;
        emit(state.copyWith(tState: TerminalConfigurationState.subTerminal));
        pageController.nextPage(
          duration: const Duration(milliseconds: 200),
          curve: Easing.linear,
        );
      }
    } else {
      EasyLoading.showToast('Please Select Terminal Type');
      emit(state.copyWith(tState: TerminalConfigurationState.errror));
    }
  }

  String? validateIP(String? ip) {
    if (ip == null) {
      return "IP address is null";
    }

    if (ip.isEmpty) {
      return "IP address is empty";
    }

    RegExp ipRegex = RegExp(
        r'^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$');
    if (!ipRegex.hasMatch(ip)) {
      return "Invalid IP address format";
    }

    List<String> segments = ip.split('.');
    for (int i = 0; i < segments.length; i++) {
      int segment = int.tryParse(segments[i]) ?? -1;
      if (segment < 0 || segment > 255) {
        return "Invalid value in segment ${i + 1}: $segment";
      }
    }
    return null;
  }

  saveIPAddress(BuildContext context) async {
    if (ipFormKey.currentState!.validate()) {
      final MySecureStorage storage = MySecureStorage();
      await storage.setServerIP(serverIP: ipController.text);
      Helpers.dio!.options.baseUrl = ipController.text;
      emit(state.copyWith(ipState: IpConfigState.completed));
    }
  }
}
