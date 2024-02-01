import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MySecureStorage {
  final storage = const FlutterSecureStorage();
  // Keys setup
  final String _outletStorageKey = 'outletStorageKey';
  final String _deviceConfig = 'DeviceConfigKey';
  final String _loginCred = 'loginCred';

  setOutletId({required String outletID}) async {
    return await storage.write(key: _outletStorageKey, value: outletID);
  }

  setDeviceConfig({required String deviceConfig}) async {
    return await storage.write(key: _deviceConfig, value: deviceConfig);
  }

  setLoginCred({required String logInCred}) async {
    return await storage.write(key: _loginCred, value: logInCred);
  }

  Future<String?> getDeviceConfig() async {
    return await storage.read(key: _deviceConfig);
  }

  Future<String?> getOutletID() async {
    return await storage.read(key: _outletStorageKey);
  }

  Future<String?> getLoginInformation() async {
    return await storage.read(key: _loginCred);
  }
}
