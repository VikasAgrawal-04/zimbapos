import 'dart:convert';

import 'package:isar/isar.dart';

part 'tables_model.g.dart';

@collection
class TableModel {
  Id id = Isar.autoIncrement;
  int? outletId;
  String? tableId;
  String? tableName;
  int? areaId;
  String? tableStatus;
  bool? isSplit;
  int? persons;
  DateTime? tableStartedAt;
  String? customerName;
  String? customerId;
  bool? isActive;
  bool? isDeleted;
  TableModel({
    this.id = Isar.autoIncrement,
    this.outletId,
    this.tableId,
    this.tableName,
    this.areaId,
    this.tableStatus,
    this.isSplit,
    this.persons,
    this.tableStartedAt,
    this.customerName,
    this.customerId,
    this.isActive = true,
    this.isDeleted = false,
  });

  TableModel copyWith({
    Id? id,
    int? outletId,
    String? tableId,
    String? tableName,
    int? areaId,
    String? tableStatus,
    bool? isSplit,
    int? persons,
    DateTime? tableStartedAt,
    String? customerName,
    String? customerId,
    bool? isActive,
    bool? isDeleted,
  }) {
    return TableModel(
      id: id ?? this.id,
      outletId: outletId ?? this.outletId,
      tableId: tableId ?? this.tableId,
      tableName: tableName ?? this.tableName,
      areaId: areaId ?? this.areaId,
      tableStatus: tableStatus ?? this.tableStatus,
      isSplit: isSplit ?? this.isSplit,
      persons: persons ?? this.persons,
      tableStartedAt: tableStartedAt ?? this.tableStartedAt,
      customerName: customerName ?? this.customerName,
      customerId: customerId ?? this.customerId,
      isActive: isActive ?? this.isActive,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outletId': outletId,
      'tableId': tableId,
      'tableName': tableName,
      'areaId': areaId,
      'tableStatus': tableStatus,
      'isSplit': isSplit,
      'persons': persons,
      'tableStartedAt': tableStartedAt?.millisecondsSinceEpoch,
      'customerName': customerName,
      'customerId': customerId,
      'isActive': isActive,
      'isDeleted': isDeleted,
    };
  }

  factory TableModel.fromMap(Map<String, dynamic> map) {
    return TableModel(
      id: map['id'] ?? Isar.autoIncrement,
      outletId: map['outletId'] != null ? map['outletId'] as int : null,
      tableId: map['tableId'] != null ? map['tableId'] as String : null,
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
      customerId:
          map['customerId'] != null ? map['customerId'] as String : null,
      isActive: map['isActive'] != null ? map['isActive'] as bool : true,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TableModel.fromJson(String source) =>
      TableModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'TableModel(id: $id, outletId: $outletId, tableId: $tableId, tableName: $tableName, areaId: $areaId, tableStatus: $tableStatus, isSplit: $isSplit, persons: $persons, tableStartedAt: $tableStartedAt, customerName: $customerName, customerId: $customerId, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(covariant TableModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.outletId == outletId &&
        other.tableId == tableId &&
        other.tableName == tableName &&
        other.areaId == areaId &&
        other.tableStatus == tableStatus &&
        other.isSplit == isSplit &&
        other.persons == persons &&
        other.tableStartedAt == tableStartedAt &&
        other.customerName == customerName &&
        other.customerId == customerId &&
        other.isActive == isActive &&
        other.isDeleted == isDeleted;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        outletId.hashCode ^
        tableId.hashCode ^
        tableName.hashCode ^
        areaId.hashCode ^
        tableStatus.hashCode ^
        isSplit.hashCode ^
        persons.hashCode ^
        tableStartedAt.hashCode ^
        customerName.hashCode ^
        customerId.hashCode ^
        isActive.hashCode ^
        isDeleted.hashCode;
  }
}
