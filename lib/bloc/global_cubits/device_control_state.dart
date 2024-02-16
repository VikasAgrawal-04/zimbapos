import 'dart:io';

abstract class DeviceState {}

class InitialDeviceState extends DeviceState {}

class LoadingDeviceState extends DeviceState {}

class IncompleteInformation extends DeviceState {
  final String message;
  IncompleteInformation({required this.message});
}

class FinalDeviceState extends DeviceState {
  final String? ipAddress;
  final bool? mainTerminal;
  final Directory directory;
  final String? outletId;

  FinalDeviceState({
    required this.ipAddress,
    required this.mainTerminal,
    required this.directory,
    required this.outletId,
  });

  FinalDeviceState copyWith({
    String? ipAddress,
    bool? mainTerminal,
    Directory? directory,
    String? outletId,
    String? serverIP,
  }) {
    return FinalDeviceState(
      ipAddress: ipAddress ?? this.ipAddress,
      mainTerminal: mainTerminal ?? this.mainTerminal,
      directory: directory ?? this.directory,
      outletId: outletId ?? this.outletId,
    );
  }
}

class ErrorDeviceState extends DeviceState {}
