part of 'user_screen_cubit.dart';

class UserScreenState extends Equatable {
  final List<UserModel> users;
  final Status status;
  final TextEditingController userFullNameController;
  final TextEditingController userMobileController;
  final TextEditingController userLogInIdController;
  final TextEditingController userPasswordController;
  final TextEditingController userEmailController;
  final TextEditingController userMaxDiscountController;
  final String? userRoleType;

  const UserScreenState({
    required this.users,
    this.status = Status.initial,
    required this.userFullNameController,
    required this.userMobileController,
    required this.userLogInIdController,
    required this.userPasswordController,
    required this.userMaxDiscountController,
    required this.userEmailController,
    this.userRoleType,
  });

  UserScreenState copyWith({
    List<UserModel>? users,
    Status? status,
    TextEditingController? userFullNameController,
    TextEditingController? userMobileController,
    TextEditingController? userLogInIdController,
    TextEditingController? userPasswordController,
    TextEditingController? userEmailController,
    TextEditingController? userMaxDiscountController,
    String? userRoleType,
  }) {
    return UserScreenState(
      users: users ?? this.users,
      status: status ?? this.status,
      userFullNameController:
          userFullNameController ?? this.userFullNameController,
      userMobileController: userMobileController ?? this.userMobileController,
      userLogInIdController:
          userLogInIdController ?? this.userLogInIdController,
      userPasswordController:
          userPasswordController ?? this.userPasswordController,
      userEmailController: userEmailController ?? this.userEmailController,
      userMaxDiscountController:
          userMaxDiscountController ?? this.userMaxDiscountController,
      userRoleType: userRoleType ?? this.userRoleType,
    );
  }

  factory UserScreenState.initial() {
    return UserScreenState(
      users: const [],
      userFullNameController: TextEditingController(),
      userMobileController: TextEditingController(),
      userLogInIdController: TextEditingController(),
      userPasswordController: TextEditingController(),
      userEmailController: TextEditingController(),
      userMaxDiscountController: TextEditingController(),
    );
  }

  @override
  List<Object?> get props => [
        users,
        status,
        userFullNameController,
        userMobileController,
        userLogInIdController,
        userPasswordController,
        userEmailController,
        userMaxDiscountController,
        userRoleType,
      ];
}
