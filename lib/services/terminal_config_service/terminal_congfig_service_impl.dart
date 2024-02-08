import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/constant/api_endpoints.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/global/utils/helpers/my_secure_storage.dart';
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

  @override
  Future<Either<Failure, int>> getRegisteredTermialId() async {
    try {
      final response =
          await Helpers.sendRequest(RequestType.get, EndPoints.getAllTerminals);
      final value = response?['data'];
      return Right(int.parse(value));
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> updateTerminal(
      {required int terminalID}) async {
    try {
      final MySecureStorage storage = MySecureStorage();
      String? outletID = await storage.getOutletID();
      if (outletID == null) {
        return Left(
            ServerFailure(message: 'No Outlet ID Registered for the Device'));
      }
      final deviceID = await PlatformDeviceId.getDeviceId;

      final response = await Helpers.sendRequest(
        RequestType.post,
        EndPoints.updateTerminalDevice,
        queryParams: {
          "outletId": outletID,
          "terminalId": terminalID,
          "deviceId": deviceID,
        },
      );
      return Right(response?['data']);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> createTerminal({
    required int terminalID,
  }) async {
    try {
      final MySecureStorage storage = MySecureStorage();
      String? outletID = await storage.getOutletID();
      if (outletID == null) {
        return Left(
            ServerFailure(message: 'No Outlet ID Registered for the Device'));
      }
      final response = await Helpers.sendRequest(
          RequestType.post, EndPoints.createTerminal,
          data: <String, dynamic>{
            "outletId": outletID,
            "terminalId": terminalID,
          });
      return Right(response?['data']);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> deleteTerminal({
    required int terminalID,
  }) async {
    try {
      final MySecureStorage storage = MySecureStorage();
      String? outletID = await storage.getOutletID();
      if (outletID == null) {
        return Left(
            ServerFailure(message: 'No Outlet ID Registered for the Device'));
      }
      final response = await Helpers.sendRequest(
        RequestType.delete,
        EndPoints.deleteTerminal,
        queryParams: {
          'outletId': outletID,
          'terminalId': terminalID,
        },
      );
      return Right(response?['data']);
    } on ServerException catch (error, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: error.message.toString()));
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
