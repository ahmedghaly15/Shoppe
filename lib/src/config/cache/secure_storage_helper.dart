part of 'cache.dart';

final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  throw UnimplementedError(); // will be overridden in main
});

final secureStorageHelperProvider = Provider<SecureStorageHelper>((ref) {
  throw UnimplementedError(); // will be overridden in main
});

class SecureStorageHelper {
  final FlutterSecureStorage _secureStorage;

  SecureStorageHelper(this._secureStorage);

  /// Saves a [value] with a [key] in the FlutterSecureStorage.
  Future<void> setSecuredString(String key, String value) async {
    DebugLogger.log(
      "FlutterSecureStorage : setSecuredString with key : $key and value : $value",
    );
    return await _secureStorage.write(key: key, value: value);
  }

  /// Gets an String value from FlutterSecureStorage with given [key].
  Future<String?> getSecuredString(String key) async {
    DebugLogger.log('FlutterSecureStorage : getSecuredString with $key :');
    return await _secureStorage.read(key: key);
  }

  /// Removes a value from FlutterSecureStorage with given [key].
  Future<void> removeSecuredData(String key) async {
    DebugLogger.log(
      'FlutterSecureStorage : data with key : $key has been removed',
    );
    return await _secureStorage.delete(key: key);
  }

  /// Removes all keys and values in the FlutterSecureStorage
  Future<void> clearAllSecuredData() async {
    DebugLogger.log('FlutterSecureStorage : all data has been cleared');
    return await _secureStorage.deleteAll();
  }
}
