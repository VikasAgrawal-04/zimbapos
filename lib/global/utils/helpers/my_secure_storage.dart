import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MySecureStorage {
  final storage = const FlutterSecureStorage();
  // Keys setup
  final String _outletStorageKey = 'outletStorageKey';
  final String _serverIP = 'serverIP';
  final String _mainTerminal = 'MainTermmial';
  final String _terminalID = 'TerminalID';
  final String _loginCred = 'loginCred';

  setOutletId({required String outletID}) async {
    return await storage.write(key: _outletStorageKey, value: outletID);
  }

  setServerIP({required String deviceConfig}) async {
    return await storage.write(key: _serverIP, value: deviceConfig);
  }

  setLoginCred({required String logInCred}) async {
    return await storage.write(key: _loginCred, value: logInCred);
  }

  setTerminalType({required bool terminalType}) async {
    return await storage.write(
        key: _mainTerminal, value: terminalType.toString());
  }

  setTerminalID({required String terminalID}) async {
    return await storage.write(key: _terminalID, value: terminalID);
  }

  Future<bool?> getmainTerminal() async {
    final String? data = await storage.read(key: _mainTerminal);
    if (data != null) {
      final bool mainTerminal = bool.fromEnvironment(data);
      return mainTerminal;
    }
    return null;
  }

  Future<int?> getTerminalID() async {
    final data = await storage.read(key: _terminalID);
    if (data != null) {
      return int.parse(data);
    }
    return null;
  }

  Future<String?> getServerIP() async {
    return await storage.read(key: _serverIP);
  }

  Future<String?> getOutletID() async {
    return await storage.read(key: _outletStorageKey);
  }

  Future<String?> getLoginInformation() async {
    return await storage.read(key: _loginCred);
  }
}
