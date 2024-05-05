
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import '../ui/settings/prefs/local_setting.dart';
import '../utils/abstraction/setting_preference.dart';

class SettingsController {

  static final _log = Logger('SettingsController');

  late final SettingPreference _settingPreference;
  ValueNotifier<bool> audioOn = ValueNotifier(true);

  SettingsController()
      : _settingPreference = LocalSettings() {
    _loadStateFromPersistence();
  }

  void toggleAudioOn() {
    audioOn.value = !audioOn.value;
    _settingPreference.saveAudio(audioOn.value);
  }
  Future<void> _loadStateFromPersistence() async {
    final loadedValues = await Future.wait([
      _settingPreference.getAudio(defaultValue: true).then((value) {
        return audioOn.value = value;
      }),
    ]);
    _log.fine(() => 'Loaded settings: $loadedValues');
  }

}