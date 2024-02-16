import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/user_models/user_model.dart';

abstract class UserApiRepo {
  Future<Either<Failure, List<UserModel>>> getAllUsers();
}
