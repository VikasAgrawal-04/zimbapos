import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/user_role_screen_function_model.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';

abstract class UserRoleService {
  Future<Either<Failure, List<UserRolesModel>>> getUserRoles();

  Future<Either<Failure, UserRolesModel>> createUserRole({
    required String roleName,
    required String outletId,
  });

  Future<Either<Failure, void>> deleteUserRole();

  Future<Either<Failure, void>> updateUser();

  Future<Either<Failure, List<UserRoleScreenFunctionModel>>>
      getAllScreenFunctions();

  Future<Either<Failure, void>> createScreenFunction(
      {required UserRoleScreenFunctionModel model});
}
