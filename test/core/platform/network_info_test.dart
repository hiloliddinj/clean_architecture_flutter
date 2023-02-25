import 'package:flutter_test/flutter_test.dart';
import 'package:giftbow_mobile/core/platform/network_info.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mocktail/mocktail.dart';

class MockDataConnectionChecker extends Mock
    implements InternetConnectionChecker {}

void main() {
  late NetworkInfoImpl networkInfo;
  late MockDataConnectionChecker mockDataConnectionChecker;

  setUp(() {
    mockDataConnectionChecker = MockDataConnectionChecker();
    networkInfo = NetworkInfoImpl(mockDataConnectionChecker);
  });

  group('isConnected', () {
    test('should answer true when there is a network connection', () async {
      // Assign
      var isConnected = true;
      when(() => mockDataConnectionChecker.hasConnection)
          .thenAnswer((invocation) => Future.value(true));

      // Action
      var result = await networkInfo.isConnected;

      // Assert
      verify(() => mockDataConnectionChecker.hasConnection);
      expect(result, isConnected);
    });

    test('should answer false when there is no network connection', () async {
      // Assign
      var isNotConnected = false;
      when(() => mockDataConnectionChecker.hasConnection)
          .thenAnswer((invocation) => Future.value(false));
      // Action
      var result = await networkInfo.isConnected;

      // Assert
      verify(() => mockDataConnectionChecker.hasConnection);
      expect(result, isNotConnected);
    });
  });
}
