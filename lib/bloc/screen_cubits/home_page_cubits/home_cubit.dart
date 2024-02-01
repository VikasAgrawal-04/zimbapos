import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/home_page_cubits/home_state.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';

class HomeCubit extends Cubit<HomeState> {
  Timer clockTimer = Timer.periodic(Duration.zero, (timer) {});
  Timer blinkingTimer = Timer.periodic(Duration.zero, (timer) {});
  HomeCubit()
      : super(
          HomeState(
              initialDateTime: DateTime.now(),
              animationValue: 1.0,
              ipAddress: '....'),
        ) {
    init();
  }

  @override
  Future<void> close() {
    clockTimer.cancel();
    blinkingTimer.cancel();
    return super.close();
  }

  Future<bool> checkServerStarted() async {
    try {
      await Socket.connect('0.0.0.0', 8080);
      return true; // Server is running
    } catch (_) {
      return false; // Server is not running
    }
  }

  Future<void> init() async {
    await getIp();
    startClock();
    startBlinking();
  }

  Future<void> getIp() async {
    final ip = await Helpers.getWifiIPAddress();
    emit(state.copyWith(ipAddress: ip));
  }

  void startClock() {
    clockTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      emit(state.copyWith(initialDateTime: DateTime.now()));
    });
  }

  void startBlinking() {
    blinkingTimer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
      emit(state.copyWith(
          animationValue: state.animationValue == 1.0 ? 0.0 : 1.0));
    });
  }
}
