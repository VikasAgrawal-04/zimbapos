import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:zimbapos/models/user_models/user_model.dart';
import 'package:zimbapos/repository/isar_service.dart';

typedef UserCallBack = Future<Response> Function(
    Request request, UserModel user);

Response okResponse(dynamic result) {
  return Response.ok(jsonEncode({'data': result}));
}

Response invalidResponse() {
  return Response.badRequest(body: jsonEncode({'data': 'Invalid Arguments'}));
}

Response badArguments(dynamic result) {
  return Response.badRequest(body: jsonEncode({'data': result}));
}

String getToken(String val) {
  return val.split(' ')[1];
}

Future<Response> authorizationHandler(
    Request request, UserCallBack nextHandler, IsarService dbCubit) async {
  if (request.headers['authorization'] == null) {
    return badArguments("Invalid Authorization");
  } else {
    final token = getToken(request.headers['authorization'].toString());
    final user = await dbCubit.userRepository.getUser(token);
    if (user != null) {
      return nextHandler(request, user);
    } else {
      return badArguments("Invalid Authorization");
    }
  }
}
