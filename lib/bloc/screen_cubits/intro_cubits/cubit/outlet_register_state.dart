part of 'outlet_register_cubit.dart';

sealed class OutletRegisterState extends Equatable {
  const OutletRegisterState();
  @override
  List<Object> get props => [];
}

final class SubscriptionInfoInit extends OutletRegisterState {}

final class SubscriptionInfoLoading extends OutletRegisterState {}

final class SubscriptionInfoModel extends OutletRegisterState {
  final SubscriberModel model;
  const SubscriptionInfoModel({required this.model});
}

final class OutletRegisterInitial extends OutletRegisterState {}

final class OutletRegisterLoading extends OutletRegisterState {}

final class OutletRegisterCompleted extends OutletRegisterState {}

final class OutletRegisterError extends OutletRegisterState {
  final String message;
  const OutletRegisterError({required this.message});
}
