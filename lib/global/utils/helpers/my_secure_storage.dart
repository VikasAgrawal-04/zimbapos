import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MySecureStorage {
  final storage = const FlutterSecureStorage();
  // Keys setup
  final String _outletStorageKey = 'outletStorageKey';

  setOutletId({required String outletID}) async {
    return await storage.write(key: _outletStorageKey, value: outletID);
  }

  Future<String?> getOutletID() async {
    return await storage.read(key: _outletStorageKey);
  }
}
