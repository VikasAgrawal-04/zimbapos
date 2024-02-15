import 'dart:convert';

import 'package:isar/isar.dart';

part 'pay_mod_master_model.g.dart';

@collection
class PayModMasterModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? payCode;
  String? payTypeName;
  bool? isActive;
  bool? isDeleted;
  PayModMasterModel({
    required this.id,
    this.outletId,
    this.payCode,
    this.payTypeName,
    this.isActive = true,
    this.isDeleted = false,
  });

  PayModMasterModel copyWith({
    Id? id,
    String? outletId,
    String? payCode,
    String? payTypeName,
    bool? isActive,
    bool? isDeleted,
  }) {
    return PayModMasterModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      payCode: payCode ?? this.payCode,
      payTypeName: payTypeName ?? this.payTypeName,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'payCode': payCode,
      'payTypeName': payTypeName,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory PayModMasterModel.fromMap(Map<String, dynamic> map) {
    return PayModMasterModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as String : null,
      payCode: map['payCode'] != null ? map['payCode'] as String : null,
      payTypeName:
          map['payTypeName'] != null ? map['payTypeName'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : true,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory PayModMasterModel.fromJson(String source) =>
      PayModMasterModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PayModMasterModel(id: $id, outletId: $outletId, payCode: $payCode, payTypeName: $payTypeName, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant PayModMasterModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.payCode == payCode &&
        other.payTypeName == payTypeName &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        payCode.hashCode ^
        payTypeName.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
