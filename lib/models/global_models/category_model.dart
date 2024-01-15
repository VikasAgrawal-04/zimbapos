import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'category_model.g.dart';

@collection
class CategoryModel {
  Id id = Isar.autoIncrement;
  int? outletId;
  String categoryid = const Uuid().v1();
  String? categoryName;
  bool? isActive;
  bool? isDeleted;
  CategoryModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.categoryName,
    this.isActive = true,
    this.isDeleted = false,
  });

  CategoryModel copyWith({
    Id? id,
    int? outletId,
    String? categoryName,
    bool? isActive,
    bool? isDeleted,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      categoryName: categoryName ?? this.categoryName,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'categoryName': categoryName,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'],
      outletId: map['outletId'] != null ? map['outletId'] as int : null,
      categoryName:
          map['categoryName'] != null ? map['categoryName'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CategoryModel(id: $id, outletId: $outletId, categoryName: $categoryName, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.categoryName == categoryName &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        categoryName.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
