import 'dart:async';
import 'package:flutter_project_template/app_config/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/preferences.dart';

class SharedPreferenceHelper {
  // shared pref instance
  final Future<SharedPreferences> _sharedPreference;

  // constructor
  SharedPreferenceHelper(this._sharedPreference);

  // General Methods: ----------------------------------------------------------
  /*Future<String> get authToken async {
    return _sharedPreference.then((preference) {
      return preference.getString(Preferences.auth_token);
    });
  }

  Future<void> saveAuthToken(String authToken) async {
    return _sharedPreference.then((preference) {
      preference.setString(Preferences.auth_token, authToken);
    });
  }

  Future<void> removeAuthToken() async {
    return _sharedPreference.then((preference) {
      preference.remove(Preferences.auth_token);
    });
  }*/

  // Login:---------------------------------------------------------------------
  Future<bool> get isLoggedIn async {
    return _sharedPreference.then((preference) {
      return preference.getBool(Preferences.is_logged_in) ?? false;
    });
  }

  Future<void> saveIsLoggedIn(bool value) async {
    return _sharedPreference.then((preference) {
      preference.setBool(Preferences.is_logged_in, value);
    });
  }

  Future<int> get getLogInMethod async {
    return _sharedPreference.then((preference) {
      return preference.getInt(Preferences.log_in_method);
    });
  }

  Future<void> saveLogInMethod(LogInMethods method) async {
    return _sharedPreference.then((preference) {
      int value;
      switch (method) {
        case LogInMethods.google:
          value = 0;
          break;
        case LogInMethods.fb:
          value = 1;
          break;
        case LogInMethods.apple:
          value = 2;
          break;
        case LogInMethods.none:
          value = 3;
          break;
      }
      preference.setInt(Preferences.log_in_method, value);
    });
  }

  // Theme:------------------------------------------------------
  Future<bool> get isDarkMode {
    return _sharedPreference.then((prefs) {
      return prefs.getBool(Preferences.is_dark_mode) ?? false;
    });
  }

  Future<void> changeBrightnessToDark(bool value) {
    return _sharedPreference.then((prefs) {
      return prefs.setBool(Preferences.is_dark_mode, value);
    });
  }

  // Language:---------------------------------------------------
  Future<String> get currentLanguage {
    return _sharedPreference.then((prefs) {
      return prefs.getString(Preferences.current_language);
    });
  }

  Future<void> changeLanguage(String language) {
    return _sharedPreference.then((prefs) {
      return prefs.setString(Preferences.current_language, language);
    });
  }
}
