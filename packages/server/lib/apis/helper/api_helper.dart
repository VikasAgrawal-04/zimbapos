import 'dart:convert';

import 'package:shelf/shelf.dart';

Response okResponse(dynamic result) {
  return Response.ok(jsonEncode({'data': result}));
}

Response invalidResponse() {
  return Response.badRequest(body: jsonEncode({'data': 'Invalid Arguments'}));
}

Response badArguments(dynamic result) {
  return Response.badRequest(body: jsonEncode({'data': result}));
}
