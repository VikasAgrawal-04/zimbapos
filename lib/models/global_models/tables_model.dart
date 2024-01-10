// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'tables_model.g.dart';

@collection
class TableModel {
  Id id = Isar.autoIncrement;
  int? outletId;
  String tableId = const Uuid().v1();
  String? tableName;
  int? areaId;
  String? tableStatus;
  bool? isSplit;
  int? persons;
  DateTime? tableStartedAt;
  String? customerName;
  String? customerId = const Uuid().v1();
  bool? isActive;
  bool? isDeleted;
  TableModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.tableName,
    this.areaId,
    this.tableStatus,
    this.isSplit,
    this.persons,
    this.tableStartedAt,
    this.customerName,
    this.isActive,
    this.isDeleted,
  });

  TableModel copyWith({
    Id? id,
    int? outletId,
    String? tableName,
    int? areaId,
    String? tableStatus,
    bool? isSplit,
    int? persons,
    DateTime? tableStartedAt,
    String? customerName,
    bool? isActive,
    bool? isDeleted,
  }) {
    return TableModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      tableName: tableName ?? this.tableName,
      areaId: areaId ?? this.areaId,
      tableStatus: tableStatus ?? this.tableStatus,
      isSplit: isSplit ?? this.isSplit,
      persons: persons ?? this.persons,
      tableStartedAt: tableStartedAt ?? this.tableStartedAt,
      customerName: customerName ?? this.customerName,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'tableName': tableName,
      'areaId': areaId,
      'tableStatus': tableStatus,
      'isSplit': isSplit,
      'persons': persons,
      'tableStartedAt': tableStartedAt?.millisecondsSinceEpoch,
      'customerName': customerName,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory TableModel.fromMap(Map<String, dynamic> map) {
    return TableModel(
      id: map['id'],
      outletId: map['outletId'] != null ? map['outletId'] as int : null,
      tableName: map['tableName'] != null ? map['tableName'] as String : null,
      areaId: map['areaId'] != null ? map['areaId'] as int : null,
      tableStatus:
          map['tableStatus'] != null ? map['tableStatus'] as String : null,
      isSplit: map['isSplit'] != null ? map['isSplit'] as bool : null,
      persons: map['persons'] != null ? map['persons'] as int : null,
      tableStartedAt: map['tableStartedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['tableStartedAt'] as int)
          : null,
      customerName:
          map['customerName'] != null ? map['customerName'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TableModel.fromJson(String source) =>
      TableModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TableModel(id: $id, outletId: $outletId, tableName: $tableName, areaId: $areaId, tableStatus: $tableStatus, isSplit: $isSplit, persons: $persons, tableStartedAt: $tableStartedAt, customerName: $customerName, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant TableModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.tableName == tableName &&
        other.areaId == areaId &&
        other.tableStatus == tableStatus &&
        other.isSplit == isSplit &&
        other.persons == persons &&
        other.tableStartedAt == tableStartedAt &&
        other.customerName == customerName &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        tableName.hashCode ^
        areaId.hashCode ^
        tableStatus.hashCode ^
        isSplit.hashCode ^
        persons.hashCode ^
        tableStartedAt.hashCode ^
        customerName.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
