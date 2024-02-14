import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';

abstract class ShiftApiRepo {
  Future<Either<Failure, int>> getShiftId();
  Future<Either<Failure, Map<String, dynamic>>> startShift();
  Future<Either<Failure, Map<String, dynamic>>> endShift();
}
