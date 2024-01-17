// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';

part 'area_model.g.dart';

@collection
class AreasModel {
  Id id = Isar.autoIncrement;
  int? outletId;
  String? areaId;
  String? areaName;
  String? rateSetId;
  double? extraChargePercent;
  bool? isActive;
  bool? isDeleted;

  AreasModel({
    Id id = Isar.autoIncrement,
    this.outletId,
    this.areaId,
    this.areaName,
    this.rateSetId,
    this.extraChargePercent,
    this.isActive = true,
    this.isDeleted = false,
  });

  AreasModel copyWith({
    Id? id,
    int? outletId,
    String? areaId,
    String? areaName,
    String? rateSetId,
    double? extraChargePercent,
    bool? isActive,
    bool? isDeleted,
  }) {
    return AreasModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      areaId: areaId ?? this.areaId,
      areaName: areaName ?? this.areaName,
      rateSetId: rateSetId ?? this.rateSetId,
      extraChargePercent: extraChargePercent ?? this.extraChargePercent,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'areaId': areaId,
      'areaName': areaName,
      'rateSetId': rateSetId,
      'extraChargePercent': extraChargePercent,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory AreasModel.fromMap(Map<String, dynamic> map) {
    return AreasModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as int : null,
      areaId: map['areaId'] != null ? map['areaId'] as String : null,
      areaName: map['areaName'] != null ? map['areaName'] as String : null,
      rateSetId: map['rateSetId'] != null ? map['rateSetId'] as String : null,
      extraChargePercent: map['extraChargePercent'] != null
          ? map['extraChargePercent'] as double
          : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AreasModel.fromJson(String source) =>
      AreasModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AreasModel(id: $id, outletId: $outletId, areaId: $areaId, areaName: $areaName, rateSetId: $rateSetId, extraChargePercent: $extraChargePercent, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant AreasModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.areaId == areaId &&
        other.areaName == areaName &&
        other.rateSetId == rateSetId &&
        other.extraChargePercent == extraChargePercent &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        areaId.hashCode ^
        areaName.hashCode ^
        rateSetId.hashCode ^
        extraChargePercent.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
