import 'package:flutter_project_template/services/app_repository/sharedprefs_repo/sharedpref_repository.dart';
import 'package:flutter_project_template/services/sharedpref/shared_pref.dart';
import 'package:flutter_project_template/state/source/source_state.dart';
import 'package:flutter_project_template/state/theme/theme_state.dart';
import 'package:flutter_project_template/state/user/user_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'lang/lang_state.dart';

//Source state
//pass user information to load
final sourceScreenNotifier = StateNotifierProvider<SourceScreenNotifier>((ref) => SourceScreenNotifier(ref.read));

//User log in state
final userLogInNotifier = StateNotifierProvider<UserLoginState>(
    (ref) => UserLoginState(SharedPrefRepository(Preference().provideSharedPreferenceHelper())));

//Theme state
final themeNotifier = StateNotifierProvider<ThemeState>(
    (ref) => ThemeState(SharedPrefRepository(Preference().provideSharedPreferenceHelper())));

//Language state
final langNotifier = StateNotifierProvider<LanguageState>(
    (ref) => LanguageState(SharedPrefRepository(Preference().provideSharedPreferenceHelper())));
