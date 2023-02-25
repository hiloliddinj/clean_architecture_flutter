import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import 'interceptor/dio_connectivity.dart';
import 'interceptor/http_interceptor.dart';

abstract class HttpClient {
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
}

class HttpClientImpl implements HttpClient {
  late final Dio _dio;

  HttpClientImpl({
    required Dio dio,
  }) {
    _dio = dio;
    _dio.interceptors.add(
      HttpInterceptor(
        requestRetrier: DioConnectivity(
          dio: dio,
          connectivity: Connectivity(),
        ),
      ),
    );
    _dio.options.baseUrl = 'https://giftbow-mock-service.azurewebsites.net/';
  }

  @override
  Future<Response> delete(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await _dio.delete(
      path,
      queryParameters: queryParameters,
      data: data,
    );
    return response;
  }

  @override
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await _dio.get(
      path,
      queryParameters: queryParameters,
    );
    return response;
  }

  @override
  Future<Response> post(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await _dio.post(
      path,
      queryParameters: queryParameters,
      data: data,
    );
    return response;
  }

  @override
  Future<Response> put(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await _dio.put(
      path,
      queryParameters: queryParameters,
      data: data,
    );
    return response;
  }
}
