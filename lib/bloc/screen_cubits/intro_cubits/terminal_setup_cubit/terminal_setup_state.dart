// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'terminal_setup_cubit.dart';

class DeviceTerminalConfigurationState {
  TerminalConfigurationState tState;
  IpConfigState ipState;
  DeviceTerminalConfigurationState({
    required this.tState,
    required this.ipState,
  });

  DeviceTerminalConfigurationState copyWith({
    TerminalConfigurationState? tState,
    IpConfigState? ipState,
  }) {
    return DeviceTerminalConfigurationState(
      tState: tState ?? this.tState,
      ipState: ipState ?? this.ipState,
    );
  }
}

enum TerminalConfigurationState {
  initial,
  loading,
  completed,
  mainServer,
  subTerminal,
  errror,
}

enum IpConfigState {
  notInitial,
  initial,
  loading,
  completed,
  error,
}
