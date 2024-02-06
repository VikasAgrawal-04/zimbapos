part of 'register_terminal_cubit.dart';

sealed class RegisterTerminalState extends Equatable {
  const RegisterTerminalState();

  @override
  List<Object> get props => [];
}

final class RegisterTerminalInitial extends RegisterTerminalState {}

final class RegisterTerminalLoading extends RegisterTerminalState {}

final class PreloadedTerminalID extends RegisterTerminalState {}

final class ListofAvailableTerminals extends RegisterTerminalState {
  final List<TerminalModel> terminalList;
  const ListofAvailableTerminals({required this.terminalList});
}

final class ErrorRegister extends RegisterTerminalState {
  final String errorMessage;
  const ErrorRegister({required this.errorMessage});
}
