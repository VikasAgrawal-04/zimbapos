import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/user_models/user_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

class UserController {
  IsarService dbCubit;
  UserController(this.dbCubit);

  Future<Response> loginUser(Request request) async {
    try {
      final requiredFields = ['logInId', 'password'];
      final reqData = await utf8.decodeStream(request.read());
      if (reqData.isEmpty) {
        return badArguments('Fields Required ${requiredFields.join(',')}');
      }
      final Map<String, dynamic> decodedData = jsonDecode(reqData);
      final missingFields =
          requiredFields.where((e) => decodedData[e] == null).toList();

      if (missingFields.isNotEmpty) {
        final missingFieldsMessage =
            'Missing fields: ${missingFields.join(', ')}';
        return badArguments(missingFieldsMessage);
      }
      final success = await dbCubit.userRepository
          .loginUser(UserModel.fromMap(decodedData));
      if (success.value1) {
        return okResponse(
            {"message": "Login Successfully!", "token": success.value2});
      } else {
        return badArguments(success.value2);
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }

  Future<Response> registerUser(Request request) async {
    try {
      final requiredFields = [
        'fullname',
        'mobile',
        'logInId',
        'password',
        'userRoleId'
      ];
      final reqData = await utf8.decodeStream(request.read());
      if (reqData.isEmpty) {
        return badArguments('Fields Required ${requiredFields.join(',')}');
      }
      final Map<String, dynamic> decodedData = jsonDecode(reqData);
      final missingFields =
          requiredFields.where((e) => decodedData[e] == null).toList();

      if (missingFields.isNotEmpty) {
        final missingFieldsMessage =
            'Missing fields: ${missingFields.join(', ')}';
        return badArguments(missingFieldsMessage);
      }
      decodedData['userID'] = Helpers.generateUuId();
      decodedData['token'] = Helpers.signJwt(decodedData);
      decodedData['password'] = Helpers.hashPassword(decodedData['password']);
      final success = await dbCubit.userRepository
          .registerUser(UserModel.fromMap(decodedData));
      if (success.value1) {
        return okResponse({
          "message": "User Registered Successfully!",
          "data": decodedData['token']
        });
      } else {
        return badArguments(success.value2);
      }
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
      return invalidResponse();
    }
  }
}
