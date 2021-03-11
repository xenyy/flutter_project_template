import 'package:flutter_project_template/app_config/constants.dart';
import 'package:flutter_project_template/services/sharedpref/shared_pref_helper.dart';

class SharedPrefRepository {
  // shared pref object
  final SharedPreferenceHelper _sharedPrefsHelper;

  SharedPrefRepository(this._sharedPrefsHelper);

// Login:---------------------------------------------------------------------
  Future<bool> login(LogInMethods method) async {
    //put here the socials network login depend on the method
    //if log in successful
    //state = true
    //else failed log in exception
    //state = false
    switch (method) {
      case LogInMethods.google:
        //Google sign in method
        print('hey google');
        break;
      case LogInMethods.fb:
        //Facebook sign in method
        print('hey facebook');
        break;
      case LogInMethods.apple:
        //Apple sign in method
        break;
      case LogInMethods.none:
        //Visitant sign in method
        break;
    }
    return await Future.delayed(Duration(seconds: 2), () => true);
  }

  Future<void> saveIsLoggedIn(bool value) => _sharedPrefsHelper.saveIsLoggedIn(value);

  Future<bool> get isLoggedIn => _sharedPrefsHelper.isLoggedIn;

  Future<void> saveLogInMethod(LogInMethods value) => _sharedPrefsHelper.saveLogInMethod(value);

  Future<int> get logInMethod => _sharedPrefsHelper.getLogInMethod;

  // Theme: --------------------------------------------------------------------
  Future<void> changeBrightnessToDark(bool value) => _sharedPrefsHelper.changeBrightnessToDark(value);

  Future<bool> get isDarkMode => _sharedPrefsHelper.isDarkMode;

  // Language: -----------------------------------------------------------------
  Future<void> changeLanguage(String value) => _sharedPrefsHelper.changeLanguage(value);

  Future<String> get currentLanguage => _sharedPrefsHelper.currentLanguage;
}
