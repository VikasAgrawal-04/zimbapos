import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'initial_config_state.dart';

class InitialConfigCubit extends Cubit<InitialConfigState> {
  InitialConfigCubit() : super(InitialConfigInitial());
}
