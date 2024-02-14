import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/services/user_management_service/user_service/user_service.dart';

import '../../../global/error/exception.dart';
import '../../../global/error/failures.dart';
import '../../../models/user_models/user_model.dart';

class UserServiceImpl implements UserService {
  @override
  Future<Either<Failure, UserModel>> getAllUser() async {
    try {
      return Right(UserModel.fromJson(''));
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
