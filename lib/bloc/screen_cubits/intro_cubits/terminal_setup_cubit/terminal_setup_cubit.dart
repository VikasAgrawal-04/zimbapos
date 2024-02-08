import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/global/utils/helpers/my_secure_storage.dart';
part 'terminal_setup_state.dart';

class TerminalSetupCubit extends Cubit<TerminalSetupState> {
  TerminalSetupCubit() : super(TerminalSetupInit()) {
    init();
  }
  late bool? terminalType;
  int? terminalID;

  init() async {
    emit(TerminalSetupInit());
    final MySecureStorage storage = MySecureStorage();
    terminalType = await storage.getmainTerminal();
    if (terminalType == null) {
      emit(const NoTerminalType(errorMessage: 'Terminal Type is Not Set'));
      return;
    }
    terminalID = await storage.getTerminalID();
    if (terminalID == null) {
      emit(const NoTerminalID(
          errorMessage: 'No terminal ID is Assigned to the system'));
      return;
    }
    emit(TerminalsettingsLoaded(
      mainTerminalType: terminalType,
      terminalId: terminalID,
    ));
  }

  changeTerminal(bool value) {
    terminalType = value;
    if (terminalType == value) {
      emit(TerminalTypeChanged(newTerminalType: value));
    }
    emit(TerminalsettingsLoaded(
      mainTerminalType: terminalType,
      terminalId: terminalID,
    ));
  }

  saveFn() async {
    print('RUnning');
    emit(SaveButtonLoading());
    final MySecureStorage storage = MySecureStorage();
    print(terminalType);
    if (terminalType != null) {
      await storage.setTerminalType(terminalType: terminalType!);
      emit(const TerminalSetUpComplete(message: 'Saved Type'));
    } else {
      emit(const TerminalErrorState(errorMessage: 'Please Select Server Type'));
    }
  }
}
