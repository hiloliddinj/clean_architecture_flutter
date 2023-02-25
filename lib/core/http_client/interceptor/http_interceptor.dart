import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';
import 'dio_connectivity.dart';

class HttpInterceptor extends Interceptor {
  final DioConnectivity requestRetrier;
  final storage = const FlutterSecureStorage();

  HttpInterceptor({required this.requestRetrier});

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    Logger().d('${options.uri}\n${options.data}');
    // * Закоментировано до момента, пока от бека не приходит токен доступа
    // if (options.headers['accessToken'] == 'false') {
    //   options.headers.remove('accessToken');
    //   handler.next(options);
    // } else {
    //   final accessToken = await storage.read(key: 'accessToken');
    //   options.headers.addAll({'authorization': 'Bearer ${accessToken!}'});
    //   handler.next(options);
    // }
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Logger().d('${response.realUri}\n${response.data}');
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    Logger().e(
      '${err.response!.realUri}\n${err.message}\n${err.response!.data['reason']}',
    );
    // if (err.response?.statusCode == 403 || err.response?.statusCode == 401) {
    //   try {
    //     final refreshToken = await storage.read(key: 'refreshToken');
    //     final newToken = await requestRetrier.refreshToken(refreshToken!);
    //     await storage.write(
    //         key: 'accessToken', value: newToken.data['accessToken']);
    //     return requestRetrier.scheduleRequestRetry(err.requestOptions);
    //   } catch (e) {
    //     return e;
    //   }
    // }
    // if (_shouldRetry(err)) {
    //   try {
    //     return requestRetrier.scheduleRequestRetry(err.requestOptions);
    //   } catch (e) {
    //     return e;
    //   }
    // }
    return super.onError(err, handler);
  }

  bool _shouldRetry(DioError error) {
    return error.type == DioErrorType.other &&
        error.error != null &&
        error.error is SocketException;
  }
}
