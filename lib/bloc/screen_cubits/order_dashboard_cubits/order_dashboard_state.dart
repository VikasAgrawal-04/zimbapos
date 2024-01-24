import 'package:equatable/equatable.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';

abstract class OrderDashboardState extends Equatable {
  @override
  List<Object?> get props => [];
}

class OrderDashboardLoading extends OrderDashboardState {
  @override
  List<Object?> get props => [];
}

class OrderDashboardInitial extends OrderDashboardState {
  @override
  List<Object?> get props => [];
}

class OrderDashboardLoaded extends OrderDashboardState {
  final List<AreasModel> areas;
  final List<TableModel> tables;
  OrderDashboardLoaded(this.areas, this.tables);

  @override
  List<Object> get props => [areas, tables];
}

class OrderDashboardError extends OrderDashboardState {
  final String error;
  OrderDashboardError(this.error);
  @override
  List<Object?> get props => [error];
}

//Tables State

class TableLoading extends OrderDashboardState {
  @override
  List<Object?> get props => [];
}
