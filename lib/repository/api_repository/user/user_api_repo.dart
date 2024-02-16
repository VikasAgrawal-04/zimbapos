import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';
import 'package:zimbapos/models/user_models/user_model.dart';

abstract class UserApiRepo {
  Future<Either<Failure, List<UserModel>>> getAllUsers();
  Future<Either<Failure, List<UserRolesModel>>> getAllUserRoles();
}
