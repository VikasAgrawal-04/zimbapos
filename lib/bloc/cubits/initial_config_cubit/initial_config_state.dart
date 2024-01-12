part of 'initial_config_cubit.dart';

sealed class InitialConfigState extends Equatable {
  const InitialConfigState();

  @override
  List<Object> get props => [];
}

final class InitialConfigInitial extends InitialConfigState {}
