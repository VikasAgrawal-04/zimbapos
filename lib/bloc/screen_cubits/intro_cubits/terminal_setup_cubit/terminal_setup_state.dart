part of 'terminal_setup_cubit.dart';

sealed class TerminalSetupState extends Equatable {
  const TerminalSetupState();

  @override
  List<Object> get props => [];
}

final class TerminalSetupInit extends TerminalSetupState {}

final class TerminalSetupLoading extends TerminalSetupState {}

final class TerminalsettingsLoaded extends TerminalSetupState {
  final bool? mainTerminalType;
  final String? terminalId;

  const TerminalsettingsLoaded({
    required this.mainTerminalType,
    required this.terminalId,
  });
}

final class TerminalErrorState extends TerminalSetupState {}
