import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:zimbapos/bloc/global_cubits/device_control_state.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/global/utils/helpers/my_secure_storage.dart';

class DeviceControlCubit extends Cubit<DeviceState> {
  DeviceControlCubit() : super(InitialDeviceState()) {
    getObject();
  }

  bool _rateIncludeTax = false;
  bool _resetKOT = false;

  String? outletId;
  bool? mainTerminal;
  String? serverIP;

  bool get rateIncludeTax => _rateIncludeTax;
  bool get resetKOT => _resetKOT;

  changeRateTaxFn(bool value) {
    _rateIncludeTax = value;
    emit(InitialDeviceState());
  }

  Future<void> getObject() async {
    emit(LoadingDeviceState());
    final MySecureStorage storage = MySecureStorage();
    Directory dir = await getApplicationCacheDirectory();
    String? outletId = await storage.getOutletID();
    bool? mainTerminal = await storage.getmainTerminal();
    String? serverIP = await storage.getServerIP();

    // if (outletId == null) {
    //   emit(IncompleteInformation(message: 'Not able to detect Outlet id'));
    //   return;
    // }
    emit(FinalDeviceState(
      ipAddress: serverIP,
      mainTerminal: mainTerminal,
      directory: dir,
      outletId: outletId,
    ));
  }

  changeKOT(bool value) {
    _resetKOT = value;
    emit(InitialDeviceState());
  }
}
