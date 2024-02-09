import 'package:equatable/equatable.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';

class TableScreenState extends Equatable {
  final List<TableModel> tableList;
  final Status status;

  const TableScreenState({
    required this.tableList,
    this.status = Status.initial,
  });

  TableScreenState copyWith({
    List<TableModel>? tableList,
    Status? status,
  }) {
    return TableScreenState(
      tableList: tableList ?? this.tableList,
      status: status ?? this.status,
    );
  }

  factory TableScreenState.initial() {
    return const TableScreenState(
      tableList: [],
    );
  }

  @override
  List<Object?> get props => [tableList, status];
}
