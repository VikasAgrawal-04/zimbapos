import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';

class TableScreenState extends Equatable {
  final List<TableModel> tableList;
  final Status status;
  final TextEditingController tableNameController;
  final String? selectedAreaId;

  const TableScreenState({
    required this.tableList,
    this.status = Status.initial,
    required this.tableNameController,
    this.selectedAreaId,
  });

  TableScreenState copyWith({
    List<TableModel>? tableList,
    Status? status,
    TextEditingController? tableNameController,
    String? selectedAreaId,
  }) {
    return TableScreenState(
      tableList: tableList ?? this.tableList,
      status: status ?? this.status,
      tableNameController: tableNameController ?? this.tableNameController,
      selectedAreaId: selectedAreaId ?? this.selectedAreaId,
    );
  }

  factory TableScreenState.initial() {
    return TableScreenState(
      tableList: const [],
      tableNameController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        tableList,
        status,
        tableNameController,
        selectedAreaId,
      ];
}
