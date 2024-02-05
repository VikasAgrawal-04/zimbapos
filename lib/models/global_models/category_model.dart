import 'dart:convert';

import 'package:isar/isar.dart';

part 'category_model.g.dart';

@collection
class CategoryModel {
  Id id = Isar.autoIncrement;
  String? outletId;
  String? categoryid;
  String? categoryName;
  bool? isActive;
  bool? isDeleted;
  CategoryModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.categoryid,
    this.categoryName,
    this.isActive = true,
    this.isDeleted = false,
  });

  CategoryModel copyWith({
    Id? id,
    String? outletId,
    String? categoryid,
    String? categoryName,
    bool? isActive,
    bool? isDeleted,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      categoryid: categoryid ?? this.categoryid,
      categoryName: categoryName ?? this.categoryName,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'categoryid': categoryid,
      'categoryName': categoryName,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as String : null,
      categoryid:
          map['categoryid'] != null ? map['categoryid'] as String : null,
      categoryName:
          map['categoryName'] != null ? map['categoryName'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : true,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CategoryModel(id: $id, outletId: $outletId, categoryid: $categoryid, categoryName: $categoryName, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.categoryid == categoryid &&
        other.categoryName == categoryName &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        categoryid.hashCode ^
        categoryName.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
