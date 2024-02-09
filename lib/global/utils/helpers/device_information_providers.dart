import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceInformation {
  static final DeviceInfoPlugin _plugin = DeviceInfoPlugin();
  static Future<String> getDeviceId() async {
    try {
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await _plugin.androidInfo;
        return androidInfo.data['id'];
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await _plugin.iosInfo;
        return iosInfo.identifierForVendor ?? '123123';
      } else if (Platform.isMacOS) {
        // Handle macOS
        return 'Device ID for macOS';
      } else if (Platform.isWindows) {
        // Handle Windows
        return 'Device ID for Windows';
      } else if (Platform.isLinux) {
        // Handle Linux
        return 'Device ID for Linux';
      } else if (Platform.isFuchsia) {
        // Handle Fuchsia
        return 'Device ID for Fuchsia';
      } else {
        // Handle other platforms
        return 'Device ID not available for this platform';
      }
    } catch (e) {
      // Handle errors
      print('Error getting device ID: $e');
      return 'Error: ${e.toString()}';
    }
  }
}
