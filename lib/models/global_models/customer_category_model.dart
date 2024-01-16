import 'dart:convert';

import 'package:isar/isar.dart';

part 'customer_category_model.g.dart';

@collection
class CustomerCategoryModel {
  Id id = Isar.autoIncrement;
  int? outletId;
  String? custCategoryId;
  String? custCategoryName;
  double? custCategoryDiscount;
  bool? isActive;
  bool? isDeleted;
  CustomerCategoryModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.custCategoryId,
    this.custCategoryName,
    this.custCategoryDiscount = 0.0,
    this.isActive = true,
    this.isDeleted = false,
  });

  CustomerCategoryModel copyWith({
    Id? id,
    int? outletId,
    String? custCategoryId,
    String? custCategoryName,
    double? custCategoryDiscount,
    bool? isActive,
    bool? isDeleted,
  }) {
    return CustomerCategoryModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      custCategoryId: custCategoryId ?? this.custCategoryId,
      custCategoryName: custCategoryName ?? this.custCategoryName,
      custCategoryDiscount: custCategoryDiscount ?? this.custCategoryDiscount,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'custCategoryId': custCategoryId,
      'custCategoryName': custCategoryName,
      'custCategoryDiscount': custCategoryDiscount,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory CustomerCategoryModel.fromMap(Map<String, dynamic> map) {
    return CustomerCategoryModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as int : null,
      custCategoryId: map['custCategoryId'] != null
          ? map['custCategoryId'] as String
          : null,
      custCategoryName: map['custCategoryName'] != null
          ? map['custCategoryName'] as String
          : null,
      custCategoryDiscount: map['custCategoryDiscount'] != null
          ? double.parse(map['custCategoryDiscount'].toString())
          : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : true,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory CustomerCategoryModel.fromJson(String source) =>
      CustomerCategoryModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CustomerCategoryModel(id: $id, outletId: $outletId, custCategoryId: $custCategoryId, custCategoryName: $custCategoryName, custCategoryDiscount: $custCategoryDiscount, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant CustomerCategoryModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.custCategoryId == custCategoryId &&
        other.custCategoryName == custCategoryName &&
        other.custCategoryDiscount == custCategoryDiscount &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        custCategoryId.hashCode ^
        custCategoryName.hashCode ^
        custCategoryDiscount.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
