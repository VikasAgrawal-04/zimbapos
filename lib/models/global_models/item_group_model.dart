import 'dart:convert';

import 'package:isar/isar.dart';

part 'item_group_model.g.dart';

@collection
class ItemGroupModel {
  Id id = Isar.autoIncrement;
  int? outletId;
  String? itemGroupId;
  String? mainGroupId;
  String? itemGroupName;
  String? printerId;
  bool? isActive;
  bool? isDeleted;
  ItemGroupModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.itemGroupId,
    this.mainGroupId,
    this.itemGroupName,
    this.printerId,
    this.isActive = true,
    this.isDeleted = false,
  });

  ItemGroupModel copyWith({
    Id? id,
    int? outletId,
    String? itemGroupId,
    String? mainGroupId,
    String? itemGroupName,
    String? printerId,
    bool? isActive,
    bool? isDeleted,
  }) {
    return ItemGroupModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      itemGroupId: itemGroupId ?? this.itemGroupId,
      mainGroupId: mainGroupId ?? this.mainGroupId,
      itemGroupName: itemGroupName ?? this.itemGroupName,
      printerId: printerId ?? this.printerId,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'itemGroupId': itemGroupId,
      'mainGroupId': mainGroupId,
      'itemGroupName': itemGroupName,
      'printerId': printerId,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory ItemGroupModel.fromMap(Map<String, dynamic> map) {
    return ItemGroupModel(
      id: map['id'],
      outletId: map['outletId'] != null ? map['outletId'] as int : null,
      itemGroupId:
          map['itemGroupId'] != null ? map['itemGroupId'] as String : null,
      mainGroupId:
          map['mainGroupId'] != null ? map['mainGroupId'] as String : null,
      itemGroupName:
          map['itemGroupName'] != null ? map['itemGroupName'] as String : null,
      printerId: map['printerId'] != null ? map['printerId'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemGroupModel.fromJson(String source) =>
      ItemGroupModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ItemGroupModel(id: $id, outletId: $outletId, itemGroupId: $itemGroupId, mainGroupId: $mainGroupId, itemGroupName: $itemGroupName, printerId: $printerId, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant ItemGroupModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.itemGroupId == itemGroupId &&
        other.mainGroupId == mainGroupId &&
        other.itemGroupName == itemGroupName &&
        other.printerId == printerId &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        itemGroupId.hashCode ^
        mainGroupId.hashCode ^
        itemGroupName.hashCode ^
        printerId.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
