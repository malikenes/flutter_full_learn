import 'package:flutter_full_learn/202/cache/shared_not_initialze.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { counter }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager() {}

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPref() {
    if (preferences == null) throw SharedNotInitException();
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPref();
    await preferences?.setString(key.name, value);
  }

  String? getString(SharedKeys key) {
    _checkPref();
    return preferences?.getString(key.name);
  }

  Future<bool> removeItem(SharedKeys key) async {
    _checkPref();
    return (await preferences?.remove(key.name) ?? false);
  }
}
