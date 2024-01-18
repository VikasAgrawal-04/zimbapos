part of 'outlet_register_cubit.dart';

sealed class OutletRegisterState extends Equatable {
  const OutletRegisterState();

  @override
  List<Object> get props => [];
}

final class OutletRegisterInitial extends OutletRegisterState {}

final class OutletRegisterLoading extends OutletRegisterState {}

final class OutletRegisterCompleted extends OutletRegisterState {}

final class OutletRegisterError extends OutletRegisterState {
  final String message;
  const OutletRegisterError({required this.message});
}
