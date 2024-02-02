import 'dart:convert';
import 'dart:io' as io;

import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:network_info_plus/network_info_plus.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';
import 'package:zimbapos/global/error/exception.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/global/utils/environment.dart';
import 'package:zimbapos/global/utils/helpers/my_secure_storage.dart';

enum RequestType { get, post, put, delete }

enum LoggerType { d, e, i, f, t, w }

class Helpers {
  static SharedPreferences? prefs;
  static Dio? dio;

  static void logger(
      {required LoggerType type, required String message, StackTrace? stack}) {
    final logger = Logger(printer: PrettyPrinter());

    switch (type) {
      case LoggerType.d:
        logger.d(message, stackTrace: stack);
        break;
      case LoggerType.e:
        logger.e(message, stackTrace: stack);
        break;
      case LoggerType.i:
        logger.i(message, stackTrace: stack);
        break;
      case LoggerType.f:
        logger.f(message, stackTrace: stack);
        break;
      case LoggerType.t:
        logger.t(message, stackTrace: stack);
        break;
      case LoggerType.w:
        logger.w(message, stackTrace: stack);
        break;
    }
  }

  static void setToken(String token) {
    dio!.options.headers = {
      "Authorization": 'Bearer $token',
      'Accept': 'application/json'
    };
  }

  static Future<Map<String, dynamic>?> sendRequest(
      RequestType type, String path,
      {Map<String, dynamic>? queryParams,
      bool encoded = false,
      dynamic data,
      dynamic listData,
      FormData? formData}) async {
    try {
      Response response;

      switch (type) {
        case RequestType.get:
          response = (await dio!.get(path, queryParameters: queryParams));
          break;
        case RequestType.post:
          response = (await dio!.post(
            path,
            options: Options(
                contentType:
                    encoded == true ? Headers.formUrlEncodedContentType : null,
                validateStatus: (code) => true),
            data: queryParams ?? listData ?? formData ?? FormData.fromMap(data),
          ));
          break;
        case RequestType.put:
          response =
              await dio!.put(path, data: data, queryParameters: queryParams);
          break;
        case RequestType.delete:
          response = (await dio!.delete(path, queryParameters: queryParams));
          break;
        default:
          return null;
      }

      if (response.statusCode == 200 || response.statusCode == 202) {
        return jsonDecode(response.data) as Map<String, dynamic>;
      } else if (response.statusCode == 400 ||
          response.statusCode == 401 ||
          response.statusCode == 402) {
        throw ServerException(
            code: response.statusCode,
            message: jsonDecode(response.data)['data']);
      } else {
        throw ServerException(
            code: response.statusCode,
            message: jsonDecode(response.data)['data']);
      }
    } on ServerException catch (e) {
      debugPrint("I go here 2");
      throw ServerException(message: e.message, code: e.code);
    } on DioException catch (e) {
      debugPrint("Dio Exception ${e.response?.data} ${e.type} ${e.message}");
      if (e.error == "Http status error [401]") {
        debugPrint("I go here 3 ${e.error == "Http status error [401]"}");
      } else {
        throw ServerException(
            message: e.error is io.SocketException
                ? "No Internet"
                : e.response?.data['message'].toString());
      }
    }
    return null;
  }

  static Future<String> getWifiIPAddress() async {
    final wifiIP = await NetworkInfo().getWifiIP();
    if (wifiIP != null) {
      debugPrint('Device IP Address: $wifiIP ');
    } else {
      debugPrint('Device not connected to Wi-Fi.');
    }
    return wifiIP ?? "...";
  }

  static String convertFailureToMessage(Failure failure) {
    if (failure is ServerFailure) {
      return failure.message;
    }
    return "Unknown error occured";
  }

  static setString({required String key, required String value}) async {
    await prefs?.setString(key, value);
  }

  static deleteString({required key}) {
    prefs?.remove(key);
  }

  static String? getString({required String key}) {
    return prefs?.getString(key);
  }

  static void clearShared() async {
    await prefs?.clear();
  }

  static String dateFormat(String dateTime) {
    return DateFormat('d MMM yyyy').format(DateTime.parse(dateTime));
  }

  static String timeFormat(String dateTime) {
    return DateFormat('hh:mm a').format(DateTime.parse(dateTime));
  }

  static String displayDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String jsonDate(String date) {
    final DateTime rawDate = DateFormat("dd/MM/yyyy").parse(date);
    return DateFormat("yyyy-MM-dd").format(rawDate);
  }

  static String apiToApiDate(String date) {
    DateTime originalDate = DateFormat("dd-MM-yyyy").parse(date);
    String formattedDateStr = DateFormat("yyyy-MM-dd").format(originalDate);
    return formattedDateStr;
  }

  static Image imgFromBase64(String base64) {
    return Image.memory(
      base64Decode(base64),
      fit: BoxFit.scaleDown,
      scale: 12,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) return child;
        return AnimatedOpacity(
          opacity: frame == null ? 0 : 1,
          duration: const Duration(seconds: 2),
          curve: Curves.easeOut,
          child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        content: Image.memory(base64Decode(base64)),
                      );
                    });
              },
              child: child),
        );
      },
    );
  }

  static String generateUuId() {
    return const Uuid().v1();
  }

  static String signJwt(Map<String, dynamic> user) {
    final jwt = JWT(user);
    final token =
        jwt.sign(SecretKey(Environment.jwtKey), algorithm: JWTAlgorithm.HS256);
    final isValid = verifyJwt(token);
    if (isValid) {
      return token;
    } else {
      return "Invalid Token";
    }
  }

  static bool verifyJwt(String token) {
    try {
      JWT.verify(token, SecretKey(Environment.jwtKey));
      return true;
    } on JWTExpiredException {
      debugPrint('jwt expired');
      return false;
    } on JWTException catch (ex) {
      debugPrint(ex.message);
      return false;
    }
  }

  static String hashPassword(String password) {
    final bytes = utf8.encode(password);
    final hashPass = sha256.convert(bytes);
    return hashPass.toString();
  }

  static bool checkPassword(String inputPassword, String storedHashedPassword) {
    String hashedInputPassword = hashPassword(inputPassword);
    return hashedInputPassword == storedHashedPassword;
  }

  static double taxPrice(double taxPercent, double price) {
    return (price + (price * (taxPercent / 100)));
  }

  static Future<String> fetchDeviceId() async {
    try {
      final deviceId = await PlatformDeviceId.getDeviceId;
      return deviceId.toString();
    } catch (error) {
      debugPrint("Failed to get device $error");
      return (error.toString());
    }
  }

  static Future<String?> getOutletId() async {
    final MySecureStorage storage = MySecureStorage();
    String? outletId = await storage.getOutletID();

    if (outletId != null) {
      var bytes = utf8.encode(outletId);
      var digest = md5.convert(bytes);
      return digest.toString();
    }
    return null;
  }
}

class NumberInputFormat extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.contains('.')) {
      return oldValue;
    } else if (newValue.text.contains(RegExp(r'[^\d]'))) {
      return oldValue;
    }
    return newValue;
  }
}
