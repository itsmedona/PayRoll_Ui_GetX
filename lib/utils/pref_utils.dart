import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  static SharedPreferences? _sharedPreferences;

  // Ensure initialization is done in a static method
  static Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreferences Initialized');
  }

  // Method to clear preferences data
  static Future<void> clearPreferencesData() async {
    await _sharedPreferences?.clear();
  }

  // Method to set theme data
  static Future<void> setThemeData(String value) async {
    await _sharedPreferences?.setString('themeData', value);
  }

  // Method to get theme data
  static String getThemeData() {
    try {
      return _sharedPreferences?.getString('themeData') ?? 'primary';
    } catch (e) {
      return 'primary';
    }
  }
}
