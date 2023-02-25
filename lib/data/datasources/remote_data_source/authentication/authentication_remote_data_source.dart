import 'package:dio/dio.dart';

import '../../../../core/error/exeptions.dart';
import '../../../../core/http_client/http_client.dart';
import '../../../models/authentication/access_token/access_token_model.dart';
import '../../../models/authentication/authentication/authentication_model.dart';
import '../../../models/authentication/confirm_code_response'
    '/confirm_code_response_model.dart';
import '../../../models/authentication/confirm_token/confirm_token_model.dart';

abstract class AuthenticationRemoteDataSource {
  Future<ConfirmTokenModel> getConfirmToken({
    required String phoneNumber,
  });

  Future<ConfirmCodeResponseModel> confirmSmsCode({
    required String confirmCode,
    required String confirmToken,
  });

  Future<AuthenticationModel> authenticationRequest({
    required String confirmToken,
  });

  Future<AccessTokenModel> getAccessToken({
    required String refreshToken,
  });
}

class AuthenticationRemoteDataSourceImp
    implements AuthenticationRemoteDataSource {
  final HttpClient client;

  AuthenticationRemoteDataSourceImp({
    required this.client,
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
      return ConfirmTokenModel.fromJson(response.data['responseObject']);
    } on DioError catch (e) {
      throw ServerException(
        cause: e.message,
      );
    }
  }

  @override
  Future<ConfirmCodeResponseModel> confirmSmsCode({
    required String confirmCode,
    required String confirmToken,
  }) async {
    try {
      var response = await client.put(
        '/v1/auth/confirm/$confirmToken',
        data: FormData.fromMap(
          {
            'confirmCode': confirmCode,
          },
        ),
      );
      return ConfirmCodeResponseModel.fromJson(response.data);
    } on DioError catch (e) {
      throw ServerException(
        cause: e.message,
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
      return AuthenticationModel.fromJson(response.data['responseObject']);
    } on DioError catch (e) {
      throw ServerException(
        cause: e.message,
      );
    }
  }

  @override
  Future<AccessTokenModel> getAccessToken({
    required String refreshToken,
  }) async {
    try {
      var response = await client.post(
        '/v1/auth/refresh',
        queryParameters: {
          'refreshToken': refreshToken,
        },
      );
      return AccessTokenModel.fromJson(response.data['responseObject']);
    } on DioError catch (e) {
      throw ServerException(
        cause: e.message,
      );
    }
  }
}
