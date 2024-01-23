import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get fileName => 'production.env';

  static String get jwtKey => dotenv.env['JWT_SECRET_KEY'] ?? "Key Not Found!";
}
