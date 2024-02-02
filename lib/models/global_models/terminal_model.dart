import 'dart:convert';

import 'package:isar/isar.dart';

part 'terminal_model.g.dart';

@collection
class TerminalModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  int? terminalId;
  String? deviceId;

  TerminalModel({
    required this.id,
    this.outletId,
    this.terminalId,
    this.deviceId,
  });

  TerminalModel copyWith({
    Id? id,
    String? outletId,
    int? terminalId,
    String? deviceId,
  }) {
    return TerminalModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      terminalId: terminalId ?? this.terminalId,
      deviceId: deviceId ?? this.deviceId,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'terminalId': terminalId,
      'deviceId': deviceId,
    };
  }

  factory TerminalModel.fromMap(Map<String, dynamic> map) {
    return TerminalModel(
      id: map['id'],
      outletId: map['outletId'] != null ? map['outletId'] as String : null,
      terminalId: map['terminalId'] != null ? map['terminalId'] as int : null,
      deviceId: map['deviceId'] != null ? map['deviceId'] as String : null,
    );
  }

  factory TerminalModel.fromJson(String source) =>
      TerminalModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TerminalModel(id: $id, outletId: $outletId, terminalId: $terminalId, deviceId: $deviceId)';
  }

  @override
  bool operator ==(covariant TerminalModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.terminalId == terminalId &&
        other.deviceId == deviceId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        terminalId.hashCode ^
        deviceId.hashCode;
  }
}
