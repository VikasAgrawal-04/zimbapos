import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'initial_config_state.dart';

class InitialConfigCubit extends Cubit<InitialConfigState> {
  InitialConfigCubit() : super(InitialConfigInitial());
}
