// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';

@collection
class SystemConfigModel {
  Id isarID = Isar.autoIncrement;
  bool hybrid;
  bool mainServer;
  String ipAddress;
  String port;
  SystemConfigModel({
    this.isarID = Isar.autoIncrement,
    required this.hybrid,
    required this.mainServer,
    required this.ipAddress,
    required this.port,
  });

  SystemConfigModel copyWith({
    Id? isarID,
    bool? hybrid,
    bool? mainServer,
    String? ipAddress,
    String? port,
  }) {
    return SystemConfigModel(
      isarID: isarID ?? this.isarID,
      hybrid: hybrid ?? this.hybrid,
      mainServer: mainServer ?? this.mainServer,
      ipAddress: ipAddress ?? this.ipAddress,
      port: port ?? this.port,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isarID': isarID,
      'hybrid': hybrid,
      'mainServer': mainServer,
      'ipAddress': ipAddress,
      'port': port,
    };
  }

  factory SystemConfigModel.fromMap(Map<String, dynamic> map) {
    return SystemConfigModel(
      isarID: map['isarID'],
      hybrid: map['hybrid'] as bool,
      mainServer: map['mainServer'] as bool,
      ipAddress: map['ipAddress'] as String,
      port: map['port'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SystemConfigModel.fromJson(String source) =>
      SystemConfigModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SystemConfigModel(isarID: $isarID, hybrid: $hybrid, mainServer: $mainServer, ipAddress: $ipAddress, port: $port)';
  }

  @override
  bool operator ==(covariant SystemConfigModel other) {
    if (identical(this, other)) return true;

    return other.isarID == isarID &&
        other.hybrid == hybrid &&
        other.mainServer == mainServer &&
        other.ipAddress == ipAddress &&
        other.port == port;
  }

  @override
  int get hashCode {
    return isarID.hashCode ^
        hybrid.hashCode ^
        mainServer.hashCode ^
        ipAddress.hashCode ^
        port.hashCode;
  }
}
