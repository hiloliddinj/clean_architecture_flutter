import 'package:hive_flutter/hive_flutter.dart';

abstract class Preferences {
  Future<dynamic> getValue({
    required String boxName,
    required String key,
  });

  Future<void> setValue({
    required String boxName,
    required String key,
    dynamic value,
  });
}

class PreferencesImpl extends Preferences {
  final HiveInterface _hive;

  PreferencesImpl(this._hive);

  @override
  Future<dynamic> getValue({
    required String boxName,
    required String key,
  }) =>
      _getValue(
        boxName,
        key,
      );

  @override
  Future<void> setValue({
    required String boxName,
    required String key,
    dynamic value,
  }) =>
      _setValue(
        boxName,
        key,
        value,
      );

  Future<dynamic> _getValue(String boxName, String key) async {
    final box = await _hive.openBox(boxName);
    return box.get(
      key,
    );
  }

  Future<void> _setValue(String boxName, String key, Object value) async {
    final box = await _hive.openBox(boxName);
    return box.put(
      key,
      value,
    );
  }
}
