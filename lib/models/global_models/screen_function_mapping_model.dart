import 'dart:convert';

import 'package:isar/isar.dart';

part 'screen_function_mapping_model.g.dart';

enum MapType { screen, function }

extension MapTypeExtension on MapType {
  String convertString() {
    switch (this) {
      case MapType.screen:
        return "Screen";
      case MapType.function:
        return "Function";
    }
  }

  static MapType fromMap(Map<String, dynamic> map) {
    final type = map['type'];
    switch (type) {
      case "Screen":
        return MapType.screen;
      case "Function":
        return MapType.function;
      default:
        throw Exception();
    }
  }
}

@collection
class SFMappingModel {
  Id id = Isar.autoIncrement;
  String? scrnFnId;
  String? scrnFnName;

  @Enumerated(EnumType.value)
  MapType? type;

  SFMappingModel({
    this.id = Isar.autoIncrement,
    this.scrnFnId,
    this.scrnFnName,
    this.type,
  });

  SFMappingModel copyWith({
    Id? id,
    String? scrnFnId,
    String? scrnFnName,
    MapType? type,
  }) {
    return SFMappingModel(
      id: id ?? this.id,
      scrnFnId: scrnFnId ?? this.scrnFnId,
      scrnFnName: scrnFnName ?? this.scrnFnName,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'scrnFnId': scrnFnId,
      'scrnFnName': scrnFnName,
      'type': type?.convertString(),
    };
  }

  factory SFMappingModel.fromMap(Map<String, dynamic> map) {
    return SFMappingModel(
      id: map['id'],
      scrnFnId: map['scrnFnId'] != null ? map['scrnFnId'] as String : null,
      scrnFnName:
          map['scrnFnName'] != null ? map['scrnFnName'] as String : null,
      type: map['type'] != null ? MapTypeExtension.fromMap(map) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SFMappingModel.fromJson(String source) =>
      SFMappingModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SFMappingModel(id: $id, scrnFnId: $scrnFnId, scrnFnName: $scrnFnName, type: $type)';
  }

  @override
  bool operator ==(covariant SFMappingModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.scrnFnId == scrnFnId &&
        other.scrnFnName == scrnFnName &&
        other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        scrnFnId.hashCode ^
        scrnFnName.hashCode ^
        type.hashCode;
  }
}
