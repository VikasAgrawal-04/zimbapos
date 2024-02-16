import 'dart:convert';

import 'package:isar/isar.dart';

part 'screen_function_junction_model.g.dart';

@collection
class ScreenFunctionJunctionModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? roleId;
  String? screenFunctionId;
  bool? canView;
  bool? canChange;
  ScreenFunctionJunctionModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.roleId,
    this.screenFunctionId,
    this.canView = false,
    this.canChange = false,
  });

  ScreenFunctionJunctionModel copyWith({
    Id? id,
    String? outletId,
    String? roleId,
    String? screenFunctionId,
    bool? canView,
    bool? canChange,
  }) {
    return ScreenFunctionJunctionModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      roleId: roleId ?? this.roleId,
      screenFunctionId: screenFunctionId ?? this.screenFunctionId,
      canView: canView ?? this.canView,
      canChange: canChange ?? this.canChange,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'roleId': roleId,
      'screenFunctionId': screenFunctionId,
      'canView': canView,
      'canChange': canChange,
    };
  }

  factory ScreenFunctionJunctionModel.fromMap(Map<String, dynamic> map) {
    return ScreenFunctionJunctionModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as String : null,
      roleId: map['roleId'] != null ? map['roleId'] as String : null,
      screenFunctionId: map['screenFunctionId'] != null
          ? map['screenFunctionId'] as String
          : null,
      canView: map['canView'] != null ? map['canView'] as bool : false,
      canChange: map['canChange'] != null ? map['canChange'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ScreenFunctionJunctionModel.fromJson(String source) =>
      ScreenFunctionJunctionModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ScreenFunctionJunctionModel(id: $id, outletId: $outletId, roleId: $roleId, screenFunctionId: $screenFunctionId, canView: $canView, canChange: $canChange)';
  }

  @override
  bool operator ==(covariant ScreenFunctionJunctionModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.roleId == roleId &&
        other.screenFunctionId == screenFunctionId &&
        other.canView == canView &&
        other.canChange == canChange;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        roleId.hashCode ^
        screenFunctionId.hashCode ^
        canView.hashCode ^
        canChange.hashCode;
  }
}
