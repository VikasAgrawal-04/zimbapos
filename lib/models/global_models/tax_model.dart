import 'dart:convert';

import 'package:isar/isar.dart';

part 'tax_model.g.dart';

@collection
class TaxModel {
  Id id = Isar.autoIncrement;
  String? taxId;
  String? taxName;
  String? taxType;
  double? taxPercent;
  bool? isActive;
  bool? isDeleted;

  TaxModel({
    this.id = Isar.autoIncrement,
    this.taxId,
    this.taxName,
    this.taxType,
    this.taxPercent,
    this.isActive = true,
    this.isDeleted = false,
  });

  TaxModel copyWith({
    Id? id,
    String? taxId,
    String? taxName,
    String? taxType,
    double? taxPercent,
    bool? isActive,
    bool? isDeleted,
  }) {
    return TaxModel(
      id: id ?? this.id,
      taxId: taxId ?? this.taxId,
      taxName: taxName ?? this.taxName,
      taxType: taxType ?? this.taxType,
      taxPercent: taxPercent ?? this.taxPercent,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'taxId': taxId,
      'taxName': taxName,
      'taxType': taxType,
      'taxPercent': taxPercent,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory TaxModel.fromMap(Map<String, dynamic> map) {
    return TaxModel(
      id: map['id'] ?? Isar.autoIncrement,
      taxId: map['taxId'] != null ? map['taxId'] as String : null,
      taxName: map['taxName'] != null ? map['taxName'] as String : null,
      taxType: map['taxType'] != null ? map['taxType'] as String : null,
      taxPercent:
          map['taxPercent'] != null ? map['taxPercent'] as double : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : true,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaxModel.fromJson(String source) =>
      TaxModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TaxModel(id: $id, taxId: $taxId, taxName: $taxName, taxType: $taxType, taxPercent: $taxPercent, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant TaxModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.taxId == taxId &&
        other.taxName == taxName &&
        other.taxType == taxType &&
        other.taxPercent == taxPercent &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        taxId.hashCode ^
        taxName.hashCode ^
        taxType.hashCode ^
        taxPercent.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
