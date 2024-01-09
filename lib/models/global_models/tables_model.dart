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
}
