import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/helpers/my_secure_storage.dart';

part 'terminal_setup_state.dart';

class TerminalSetupCubit extends Cubit<TerminalSetupState> {
  TerminalSetupCubit() : super(TerminalSetupInit()) {
    init();
  }

  init() async {
    emit(TerminalSetupInit());
    final MySecureStorage storage = MySecureStorage();
    bool? mainTerminal = await storage.getmainTerminal();
  }
}
