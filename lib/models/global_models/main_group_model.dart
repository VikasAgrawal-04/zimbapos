import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'main_group_model.g.dart';

@collection
class MainGroupModel {
  Id id = Isar.autoIncrement;
  String mainGroupId = const Uuid().v1();
  String? categoryId;
  String? mainGroupName;
  int? outletId;
  bool? isActive;
  bool? isDeleted;
  MainGroupModel({
    required this.id,
    this.categoryId,
    this.mainGroupName,
    this.outletId,
     this.isActive = true,
    this.isDeleted = false,
  });

  MainGroupModel copyWith({
    Id? id,
    String? categoryId,
    String? mainGroupName,
    int? outletId,
    bool? isActive,
    bool? isDeleted,
  }) {
    return MainGroupModel(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      mainGroupName: mainGroupName ?? this.mainGroupName,
      outletId: outletId ?? this.outletId,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'categoryId': categoryId,
      'mainGroupName': mainGroupName,
      'outletId': outletId,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory MainGroupModel.fromMap(Map<String, dynamic> map) {
    return MainGroupModel(
      id: map['id'],
      categoryId:
          map['categoryId'] != null ? map['categoryId'] as String : null,
      mainGroupName:
          map['mainGroupName'] != null ? map['mainGroupName'] as String : null,
      outletId: map['outletId'] != null ? map['outletId'] as int : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MainGroupModel.fromJson(String source) =>
      MainGroupModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MainGroupModel(id: $id, categoryId: $categoryId, mainGroupName: $mainGroupName, outletId: $outletId, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant MainGroupModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.categoryId == categoryId &&
        other.mainGroupName == mainGroupName &&
        other.outletId == outletId &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        categoryId.hashCode ^
        mainGroupName.hashCode ^
        outletId.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
