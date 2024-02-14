import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/user_models/user_model.dart';

abstract class UserService {
  Future<Either<Failure, UserModel>> getAllUser();
}
