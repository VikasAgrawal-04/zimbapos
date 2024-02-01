import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/global_cubits/device_control_state.dart';
import 'package:zimbapos/models/user_models/system_config_model.dart';

class DeviceControlCubit extends Cubit<DeviceState> {
  DeviceControlCubit() : super(InitialDeviceState());

  bool _rateIncludeTax = false;
  bool _resetKOT = false;

  bool get rateIncludeTax => _rateIncludeTax;
  bool get resetKOT => _resetKOT;

  changeRateTaxFn(bool value) {
    _rateIncludeTax = value;
    emit(InitialDeviceState());
  }

  changeKOT(bool value) {
    _resetKOT = value;
    emit(InitialDeviceState());
  }
}
