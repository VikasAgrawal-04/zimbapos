import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/screen_function_junction_model.dart';
import 'package:zimbapos/models/global_models/screen_function_mapping_model.dart';
import 'package:zimbapos/models/global_models/user_roles_model.dart';
import 'package:zimbapos/models/user_models/user_model.dart';

abstract class UserApiRepo {
  //for user roles
  Future<Either<Failure, List<UserRolesModel>>> getAllUserRoles();
  Future<Either<Failure, List<SFMappingModel>>> getAllSF();
  Future<Either<Failure, Map<String, dynamic>>> createUserRole(
      UserRolesModel item);
  Future<Either<Failure, Map<String, dynamic>>> updateUserRole(
      UserRolesModel item);
  Future<Either<Failure, Map<String, dynamic>>> deleteUserRole(
    String userRoleId,
  );

  //Users
  Future<Either<Failure, List<UserModel>>> getAllUsers();
  Future<Either<Failure, Map<String, dynamic>>> createUser(UserModel item);
  Future<Either<Failure, Map<String, dynamic>>> updateUser(UserModel item);
  Future<Either<Failure, Map<String, dynamic>>> deleteUser(String userId);

  //SF Role Junction
  Future<Either<Failure, Map<String, dynamic>>> createRoleSFJunction(
      List<ScreenFunctionJunctionModel> data);
}
