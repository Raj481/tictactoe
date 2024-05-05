
abstract class SettingPreference {

  Future<bool> getAudio({required bool defaultValue});

  Future<void> saveAudio(bool value);

}