import 'package:dio/dio.dart';

import '../../../../core/error/exeptions.dart';
import '../../../../core/http_client/http_client.dart';
import '../../../models/authentication/authentication'
    '/authentication_model.dart';
import '../../../models/authentication/confirm_token/confirm_token_model.dart';
import '../../local_data_source/authentication'
    '/authentication_local_data_source.dart';

abstract class AuthenticationRemoteDataSource {
  Future<ConfirmTokenModel> getConfirmToken({
    required String phoneNumber,
  });

  Future<void> confirmSmsCode({
    required String confirmCode,
  });

  Future<AuthenticationModel> authenticationRequest({
    required String confirmToken,
  });

  Future<String> getAccessToken({
    required String refreshToken,
  });
}

class AuthenticationRemoteDataSourceImp
    implements AuthenticationRemoteDataSource {
  final HttpClient client;
  final AuthenticationLocalDataSource authenticationLocalDataSource;

  AuthenticationRemoteDataSourceImp({
    required this.client,
    required this.authenticationLocalDataSource,
  });

  @override
  Future<ConfirmTokenModel> getConfirmToken({
    required String phoneNumber,
  }) async {
    try {
      var response = await client.post(
        '/v1/auth/confirm',
        data: FormData.fromMap(
          {
            'phoneNumber': phoneNumber,
          },
        ),
      );
      return ConfirmTokenModel.fromJson(
        response.data['responseObject'],
      );
    } on DioError catch (e) {
      throw ServerException(
        cause: e.message,
      );
    }
  }

  @override
  Future<void> confirmSmsCode({
    required String confirmCode,
  }) async {
    try {
      String confirmToken =
          await authenticationLocalDataSource.getConfirmTokenFromCache();
      await client.put(
        '/v1/auth/confirm/$confirmToken',
        data: FormData.fromMap(
          {
            'confirmCode': confirmCode,
          },
        ),
      );
      return;
    } on DioError catch (e) {
      throw ServerException(
        cause: e.response!.data['reason']['confirmCode'],
        data: e.response!.data['responseObject'],
        code: e.response!.data['httpStatusCode'],
      );
    }
  }

  @override
  Future<AuthenticationModel> authenticationRequest({
    required String confirmToken,
  }) async {
    try {
      var response = await client.post(
        '/v1/auth',
        queryParameters: {
          'confirmToken': confirmToken,
        },
      );
      return AuthenticationModel.fromJson(
        response.data['responseObject'],
      );
    } on DioError catch (e) {
      throw ServerException(
        cause: e.message,
      );
    }
  }

  @override
  Future<String> getAccessToken({
    required String refreshToken,
  }) async {
    try {
      var response = await client.post(
        '/v1/auth/refresh',
        queryParameters: {
          'refreshToken': refreshToken,
        },
      );
      return response.data['responseObject']['accessToken'];
    } on DioError catch (e) {
      throw ServerException(
        cause: e.message,
      );
    }
  }
}
