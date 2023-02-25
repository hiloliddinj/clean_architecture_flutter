import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SecureStorage {
  Future<String?> getValue({
    required String key,
  });

  Future<void> setValue({
    required String key,
    required String value,
  });
}

class SecureStorageImpl extends SecureStorage {

  final FlutterSecureStorage _storage;

  SecureStorageImpl(this._storage);

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
    encryptedSharedPreferences: true,
  );

  @override
  Future<String?> getValue({
    required String key,
  }) =>
      _getValue(
        key,
      );

  @override
  Future<void> setValue({
    required String key,
    required String value,
  }) =>
      _setValue(
        key,
        value,
      );

  Future<String?> _getValue(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> _setValue(String key, String value) async {
    await _storage.write(
      key: key,
      value: value,
      aOptions: _getAndroidOptions(),
    );
  }
}
