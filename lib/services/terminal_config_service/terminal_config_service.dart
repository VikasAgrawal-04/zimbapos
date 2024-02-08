import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/terminal_model.dart';

abstract class TerminalConfigService {
  Future<Either<Failure, List<TerminalModel>>> getAllTerminals();
}
