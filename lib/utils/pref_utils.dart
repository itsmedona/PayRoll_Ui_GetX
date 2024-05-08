
import 'package:shared_preferences/shared_preferences.dart';

class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      sharedPreferences = value;
    });
  }
  static SharedPreferences? sharedPreferences;

  Future<void> init() async {
    sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

//will clear all the data  stored in preference
  void clearPreferencesData() async {
    sharedPreferences!.clear();
  }

  Future<void> setThemeData(String value) {
    return sharedPreferences!.setString('themeData', value);
  }

  String getThemeData() {
    try {
      return sharedPreferences!.getString('themeData')!;
    } catch (e) {
      return 'primary';
    }
  }
}
