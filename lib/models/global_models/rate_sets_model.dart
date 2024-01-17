// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';

part 'rate_sets_model.g.dart';

@collection
class RateSetsModel {
  Id id = Isar.autoIncrement;
  int? outletId;
  String? ratesetId;
  String? ratesetName;
  bool? isActive;
  bool? isDeleted;

  RateSetsModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.ratesetId,
    this.ratesetName,
    this.isActive = true,
    this.isDeleted = false,
  });

  RateSetsModel copyWith({
    Id? id,
    int? outletId,
    String? ratesetId,
    String? ratesetName,
    bool? isActive,
    bool? isDeleted,
  }) {
    return RateSetsModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      ratesetId: ratesetId ?? this.ratesetId,
      ratesetName: ratesetName ?? this.ratesetName,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'ratesetId': ratesetId,
      'ratesetName': ratesetName,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory RateSetsModel.fromMap(Map<String, dynamic> map) {
    return RateSetsModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as int : null,
      ratesetId: map['ratesetId'] != null ? map['ratesetId'] as String : null,
      ratesetName:
          map['ratesetName'] != null ? map['ratesetName'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : true,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory RateSetsModel.fromJson(String source) =>
      RateSetsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RateSetsModel(id: $id, outletId: $outletId, ratesetId: $ratesetId, ratesetName: $ratesetName, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant RateSetsModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.ratesetId == ratesetId &&
        other.ratesetName == ratesetName &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        ratesetId.hashCode ^
        ratesetName.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
