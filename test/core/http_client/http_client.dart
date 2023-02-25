// import 'package:dio/dio.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';
// import 'package:sample_archit_folder_manager/core/http_client/http_client.dart';
//
// class MockDio extends Mock implements Dio {}
//
// class MockInterceptor extends Mock implements Interceptor {}
//
// class MockResponse extends Mock implements Response {}
//
// class MockBaseOptions extends Mock implements BaseOptions {}
//
// void main() {
//   // late HttpClientImpl httpClient;
//   late MockDio mockDio;
//   late MockInterceptor mockInterceptor;
//   late MockBaseOptions baseOptions;
//   late MockResponse mockResponse;
//
//   setUp(() {
//     mockInterceptor = MockInterceptor();
//     baseOptions = MockBaseOptions();
//     mockDio = MockDio();
//     mockResponse = MockResponse();
//     // httpClient = HttpClientImpl(dio: mockDio);
//   });
//
//   group('isConnected', () {
//     test('should answer true when there is a network connection', () async {
//       // Assign
//       mockDio.interceptors.add(mockInterceptor);
//       mockDio.options = baseOptions;
//       when(() => mockDio.get(any(), queryParameters: {'data': 'data'}))
//           .thenAnswer((_) async => mockResponse);
//       // Action
//       // var result =
//       //     await httpClient.get('any path', queryParameters: {'data': 'data'});
//       // Assert
//       verify(() => mockDio.get(any(), queryParameters: {'data': 'data'}));
//     });
//   });
// }
