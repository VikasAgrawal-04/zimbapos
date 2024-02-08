part of 'register_terminal_cubit.dart';

class RegiState {
  ScreenState screenState;
  RegistrationState state;

  RegiState({
    required this.screenState,
    required this.state,
  });

  RegiState copyWith({
    ScreenState? screenState,
    RegistrationState? state,
  }) {
    return RegiState(
      screenState: screenState ?? this.screenState,
      state: state ?? this.state,
    );
  }
}

enum ScreenState {
  initial,
  screenLoading,
  loading,
  idFound,
  listRecieved,
  error,
  completed,
}

enum RegistrationState {
  initial,
  loading,
  completed,
  error,
}
