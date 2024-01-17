import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/models/user_models/system_config_model.dart';

class DeviceControlCubit extends Cubit<SystemConfigModel?> {
  final SystemConfigModel configModel;
  DeviceControlCubit({required this.configModel}) : super(configModel);
}
