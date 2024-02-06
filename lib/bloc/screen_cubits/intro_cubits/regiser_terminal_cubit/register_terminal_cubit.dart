import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/models/global_models/terminal_model.dart';

part 'register_terminal_state.dart';

class RegisterTerminalCubit extends Cubit<RegisterTerminalState> {
  RegisterTerminalCubit() : super(RegisterTerminalInitial());
}
