

import 'package:abrtictactoe/utils/abstraction/setting_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalSettings extends SettingPreference {

  final Future<SharedPreferences> sharedPrefs = SharedPreferences.getInstance();

  @override
  Future<bool> getAudio({required bool defaultValue}) async {
    final prefs = await sharedPrefs;
    return prefs.getBool('audioOn') ?? defaultValue;
  }

  @override
  Future<void> saveAudio(bool value) async {
    final prefs = await sharedPrefs;
    await prefs.setBool('audioOn', value);
  }

}