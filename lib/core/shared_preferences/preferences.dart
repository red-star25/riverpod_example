import 'package:shared_preferences/shared_preferences.dart';

class Preference {
  // shared pref instance
  static SharedPreferences? _prefs;

  static Future<SharedPreferences> load() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs!;
  }

  Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  Future<void> setInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  Future<void> setDouble(String key, double value) async {
    await _prefs?.setDouble(key, value);
  }

  Future<void> setBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  String? getString(String key, {String? def}) {
    String? val;
    val ??= _prefs?.getString(key);
    val ??= def;
    return val;
  }

  int? getInt(String key, {int? def}) {
    int? val;
    val ??= _prefs?.getInt(key);
    val ??= def;
    return val;
  }

  double? getDouble(String key, {double? def}) {
    double? val;
    val ??= _prefs?.getDouble(key);
    val ??= def;
    return val;
  }

  bool? getBool(String key) {
    bool? val;
    val = _prefs?.getBool(key);
    return val;
  }

  Future<bool> remove(String key) async {
    await _prefs?.remove(key);
    return true;
  }

  Future<bool> clear() async {
    await _prefs?.clear();
    return true;
  }
}
