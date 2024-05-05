
abstract class AppPreference {
  Future<bool> getBool();
  Future<void> saveBool();
  Future<bool> getString();
  Future<void> saveString();
  Future<bool> getInt();
  Future<void> saveInt();
}