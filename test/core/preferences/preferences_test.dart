import 'package:flutter_test/flutter_test.dart';
import 'package:giftbow_mobile/core/preferences/preferences.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mocktail/mocktail.dart';

class MockHiveInterface extends Mock implements HiveInterface {}

class MockBox<E> extends Mock implements Box<E> {}

void main() {
  late MockHiveInterface mockHiveInterface;
  late PreferencesImpl preferences;
  late MockBox mockBox;

  setUp(() {
    mockHiveInterface = MockHiveInterface();
    mockBox = MockBox();
    preferences = PreferencesImpl(mockHiveInterface);
  });

  group('', () {
    void initMockBox() {
      when(() => mockHiveInterface.openBox(any()))
          .thenAnswer((_) async => mockBox);
    }

    test('should setValue ', () async {
      // Assign
      initMockBox();
      when(() => mockBox.put(any(), any())).thenAnswer((_) => Future.value());

      // Action
      await preferences.setValue(
        boxName: 'boxName',
        key: 'key',
        value: 'value',
      );

      // Assert
      verify(
        () => mockHiveInterface.openBox(any()),
      );
      verify(() => mockBox.put(
            any(),
            any(),
          ));
    });

    test('should getValue ', () async {
      // Assign
      initMockBox();
      when(() => mockBox.get(any())).thenAnswer((_) => Future.value('value'));

      // Action
      var result = await preferences.getValue(
        boxName: 'boxName',
        key: 'key',
      );

      // Assert
      verify(
            () => mockHiveInterface.openBox(any()),
      );
      verify(() => mockBox.get(
        any(),
      ));
      expect(result, 'value');
    });
  });
}
