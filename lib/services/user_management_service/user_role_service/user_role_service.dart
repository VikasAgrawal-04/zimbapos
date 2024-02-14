import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';

abstract class UserRoleService {
  Future<Either<Failure, String>> getUserRoles();

  Future<Either<Failure, void>> createUserRole();

  Future<Either<Failure, void>> deleteUserRole();

  Future<Either<Failure, void>> updateUser();
}
