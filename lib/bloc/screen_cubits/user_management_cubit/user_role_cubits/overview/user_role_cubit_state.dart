// ignore_for_file: public_member_api_docs, sort_constructors_first
enum ScreenState {
  initial,
  loading,
  completed,
  error,
}

class UserRoleScreenState {
  ScreenState screenState;
  UserRoleScreenState({
    required this.screenState,
  });

  UserRoleScreenState copyWith({
    ScreenState? screenState,
  }) {
    return UserRoleScreenState(
      screenState: screenState ?? this.screenState,
    );
  }
}
