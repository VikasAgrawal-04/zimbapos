import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/global_models/terminal_model.dart';
import 'package:zimbapos/services/terminal_config_service/terminal_config_service.dart';

class TerminalConfigServiceImpl implements TerminalConfigService {
  @override
  Future<Either<Failure, List<TerminalModel>>> getAllTerminals() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getAllTerminals);
      final List<dynamic> data = response?['data'];
      final List<TerminalModel> terminalList =
          data.map((e) => TerminalModel.fromMap(e)).toList();
      return Right(terminalList);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
