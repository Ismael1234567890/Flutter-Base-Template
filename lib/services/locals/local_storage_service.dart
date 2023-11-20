import 'package:shared_preferences/shared_preferences.dart';
import '/utils/helpers/strings.dart';

/// contains all service to get data from local
class LocalStorageServices {
  static SharedPreferences? _sharedPref;

  static final LocalStorageServices _localStorageServices =
      LocalStorageServices._internal();

  factory LocalStorageServices() {
    return _localStorageServices;
  }
  LocalStorageServices._internal();

  Future<void> init() async {
    _sharedPref = await SharedPreferences.getInstance();
  }

  set saveToken(String? keyToken_) {
    _sharedPref?.setString(keyToken, keyToken_!);
  }

  String? get getToken {
    return (_sharedPref != null && _sharedPref!.containsKey(keyToken))
        ? _sharedPref?.getString(keyToken)
        : null;
  }

  removeToken() {
    _sharedPref?.remove(keyToken);
  }

  clear() {
    _sharedPref?.clear();
  }

  set userSelectedLang(String? lang) {
    _sharedPref?.setString(keyUserLangSelected, lang!);
  }

  String? get getUserSelectedLang {
    return (_sharedPref != null &&
            _sharedPref!.containsKey(keyUserLangSelected))
        ? _sharedPref?.getString(keyUserLangSelected)
        : null;
  }
}
