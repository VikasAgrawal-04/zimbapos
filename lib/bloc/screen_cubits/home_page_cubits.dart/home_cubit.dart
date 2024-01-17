import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:zimbapos/bloc/screen_cubits/home_page_cubits.dart/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(HomeState(
            initialDateTime: DateTime.now(),
            animationValue: 1.0,
            ipAddress: '....')) {
    init();
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
    await getWifiIPAddress();
    startClock();
    startBlinking();
  }

  void startClock() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      emit(state.copyWith(initialDateTime: DateTime.now()));
    });
  }

  Future<void> getWifiIPAddress() async {
    final wifiIP = await NetworkInfo().getWifiIP();
    if (wifiIP != null) {
      emit(state.copyWith(ipAddress: wifiIP));
      debugPrint('Device IP Address: $wifiIP');
    } else {
      emit(state.copyWith(ipAddress: '...'));
      debugPrint('Device not connected to Wi-Fi.');
    }
  }

  void startBlinking() {
    Timer.periodic(const Duration(milliseconds: 300), (timer) {
      emit(state.copyWith(
          animationValue: state.animationValue == 1.0 ? 0.0 : 1.0));
    });
  }
}
