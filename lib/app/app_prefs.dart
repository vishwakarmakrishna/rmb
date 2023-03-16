import 'package:shared_preferences/shared_preferences.dart';

const prefsKeyProfiles = "PREFS_KEY_PROFILES";

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<void> setUserProfile(String value) async {
    _sharedPreferences.setString(prefsKeyProfiles, value);
  }

  Future<String> getUserProfile() async {
    return _sharedPreferences.getString(prefsKeyProfiles) ?? "";
  }
}
