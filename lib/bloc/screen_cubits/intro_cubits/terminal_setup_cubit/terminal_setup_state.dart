part of 'terminal_setup_cubit.dart';

sealed class TerminalSetupState extends Equatable {
  const TerminalSetupState();

  @override
  List<Object> get props => [];
}

final class TerminalSetupInit extends TerminalSetupState {}

final class TerminalSetupLoading extends TerminalSetupState {}

final class SaveButtonLoading extends TerminalSetupState {}

final class RefreshState extends TerminalSetupState {}

final class NoTerminalType extends TerminalSetupState {
  final String errorMessage;

  const NoTerminalType({required this.errorMessage});
}

class TerminalTypeChanged extends TerminalSetupState {
  final bool newTerminalType;

  const TerminalTypeChanged({required this.newTerminalType});
}

final class NoTerminalID extends TerminalSetupState {
  final String errorMessage;
  const NoTerminalID({required this.errorMessage});
}

final class TerminalsettingsLoaded extends TerminalSetupState {
  final bool? mainTerminalType;
  final String? terminalId;

  const TerminalsettingsLoaded({
    required this.mainTerminalType,
    required this.terminalId,
  });

  TerminalsettingsLoaded copyWith({
    bool? mainTerminalType,
    String? terminalId,
  }) {
    return TerminalsettingsLoaded(
      mainTerminalType: mainTerminalType ?? this.mainTerminalType,
      terminalId: terminalId ?? this.terminalId,
    );
  }
}

final class TerminalSetUpComplete extends TerminalSetupState {
  final String message;
  const TerminalSetUpComplete({required this.message});
}

final class TerminalErrorState extends TerminalSetupState {
  final String errorMessage;

  const TerminalErrorState({required this.errorMessage});
}
