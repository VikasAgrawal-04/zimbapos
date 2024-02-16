part of 'user_screen_cubit.dart';

class UserScreenState extends Equatable {
  final List<UserModel> users;
  final Status status;

  const UserScreenState({
    required this.users,
    this.status = Status.initial,
  });

  UserScreenState copyWith({
    List<UserModel>? users,
    Status? status,
  }) {
    return UserScreenState(
      users: users ?? this.users,
      status: status ?? this.status,
    );
  }

  factory UserScreenState.initial() {
    return const UserScreenState(users: [], status: Status.initial);
  }

  @override
  List<Object?> get props => [users, status];
}
