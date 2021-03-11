import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_project_template/services/sharedpref/shared_pref_helper.dart';

class Preference {
  Future<SharedPreferences> sharedPref;

  Preference() {
    sharedPref = provideSharedPreferences();
  }

  //initialize the instance of shared prefs
  Future<SharedPreferences> provideSharedPreferences() {
    return SharedPreferences.getInstance();
  }

  //initialize the helper
  SharedPreferenceHelper provideSharedPreferenceHelper() {
    return SharedPreferenceHelper(sharedPref);
  }

}
