import 'package:shared_preferences/shared_preferences.dart';

abstract final class SharedPrefKey {
  static const String accessToken = 'accessToken';
  static const String email = 'email';
  static const String userId = 'userId';
}

class SharedPrefService {
  static const String _keyPrefix = 'deviddy_app_';

  static Future<SharedPrefService> getInstance() async {
    _instance ??= SharedPrefService();
    await _instance!.init();
    return _instance!;
  }

  static SharedPrefService? _instance;

  late final SharedPreferences _pref;

  Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  Future<void> saveString(String key, String value) async {
    await _pref.setString(_keyPrefix + key, value);
  }

  Future<String?> getString(String key) async {
    return _pref.getString(_keyPrefix + key);
  }

  Future<void> removeKey(String key) async {
    await _pref.remove(_keyPrefix + key);
  }

  Future<void> clearAll() async {
    await _pref.clear();
  }
}
