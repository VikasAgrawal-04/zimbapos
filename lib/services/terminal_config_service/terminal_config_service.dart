import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/terminal_model.dart';

abstract class TerminalConfigService {
  Future<Either<Failure, List<TerminalModel>>> getAllTerminals();

  Future<Either<Failure, int>> getRegisteredTermialId();

  Future<Either<Failure, String>> updateTerminal({required int terminalID});

  Future<Either<Failure, String>> createTerminal({required int terminalID});

  Future<Either<Failure, String>> deleteTerminal({required int terminalID});
}
