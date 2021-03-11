import 'package:flutter_project_template/app_config/constants.dart';
import 'package:flutter_project_template/services/app_repository/sharedprefs_repo/sharedpref_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserLoginState extends StateNotifier<bool> {
  UserLoginState(SharedPrefRepository repository, [bool isLoggedIn])
      : this._sharedPrefRepository = repository,
        super(false) {
    _isLogged();
  }

  final SharedPrefRepository _sharedPrefRepository;

  void _isLogged() {
    _sharedPrefRepository.isLoggedIn.then((value) {
      state = value ?? false; //set false if null
    });
  }

  Future<bool> get isLoggedIn => _sharedPrefRepository.isLoggedIn;

  Future<int> get logInMethod => _sharedPrefRepository.logInMethod;

  Future login(LogInMethods method) async {
    state = true;
    await _sharedPrefRepository.saveLogInMethod(method);
    await _sharedPrefRepository.login(method);
    await _sharedPrefRepository.saveIsLoggedIn(true);
  }

  Future logout(LogInMethods method) async {
    state = false;
    await _sharedPrefRepository.saveLogInMethod(method);
    await _sharedPrefRepository.login(method);
    await _sharedPrefRepository.saveIsLoggedIn(false);
  }
}
