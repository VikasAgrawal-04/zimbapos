import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  final SharedPreferences preferences;

  SharedPrefs(this.preferences);

  String? getString(String key) {
    return preferences.getString(key);
  }

  bool? getBool(String key) {
    return preferences.getBool(key);
  }

  List<String>? getStringList(String key) {
    return preferences.getStringList(key);
  }

  setString(String key, String value) {
    preferences.setString(key, value);
  }

  setBool(String key, bool value) {
    preferences.setBool(key, value);
  }
}
