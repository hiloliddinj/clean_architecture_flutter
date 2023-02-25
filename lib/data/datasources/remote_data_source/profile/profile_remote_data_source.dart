import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../core/error/exeptions.dart';
import '../../../../core/http_client/http_client.dart';
import '../../../../domain/entities/profile/profile_info/enum/gender.dart';
import '../../../models/profile/profile_info/profile_model.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileModel> getProfileInfo();

  Future<void> updateProfileInfo({
    required String name,
    required String surname,
    required String birthday,
    required Gender gender,
    bool? userConfirm,
  });

  Future<String> updateProfileAvatar({
    File? avatarFile,
  });

  Future<void> confirmationEmailChange({
    required String confirmCode,
  });

  Future<void> updateEmail({
    required String email,
  });
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final HttpClient client;

  ProfileRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<ProfileModel> getProfileInfo() async {
    try {
      var response = await client.get(
        '/v1/auth/profile',
      );
      return ProfileModel.fromJson(response.data['responseObject']);
    } on DioError catch (e) {
      throw ServerException(
        cause: e.message,
      );
    }
  }

  @override
  Future<void> updateProfileInfo({
    required String name,
    required String surname,
    required String birthday,
    required Gender gender,
    bool? userConfirm,
  }) async {
    try {
      await client.put(
        '/v1/auth/profile',
        queryParameters: {
          'name': name,
          'surname': surname,
          'birthday': birthday,
          'gender': gender.name,
          'userConfirm': false,
        },
      );
      return;
    } on DioError catch (e) {
      throw ServerException(
        cause: e.message,
      );
    }
  }

  @override
  Future<String> updateProfileAvatar({
    File? avatarFile,
  }) async {
    FormData formData;
    if (avatarFile != null) {
      formData = FormData.fromMap(
        {
          'avatarFile': MultipartFile.fromFileSync(
            avatarFile.path,
            filename: 'avatar.jpeg',
          ),
        },
      );
    } else {
      formData = FormData.fromMap(
        {
          'avatarFile': MultipartFile.fromBytes(
            [],
            filename: '',
          ),
        },
      );
    }

    try {
      var response = await client.put(
        '/v1/auth/profile/avatar',
        data: formData,
      );

      return response.data['responseObject'];
    } on DioError catch (e) {
      throw ServerException(
        cause: e.message,
      );
    }
  }

  @override
  Future<void> confirmationEmailChange({
    required String confirmCode,
  }) async {
    try {
      await client.put(
        '/v1/auth/confirm/email',
        queryParameters: {
          'confirmCode': confirmCode,
        },
      );
      return;
    } on DioError catch (e) {
      throw ServerException(
        cause: e.response!.data['reason'],
        data: e.response!.data['responseObject'],
        code: e.response!.data['httpStatusCode'],
      );
    }
  }

  @override
  Future<void> updateEmail({
    required String email,
  }) async {
    try {
      await client.post(
        '/v1/auth/confirm/email',
        queryParameters: {
          'email': email,
        },
      );
      return;
    } on DioError catch (e) {
      if (e.response!.statusCode == 400) {}
      throw ServerException(
        cause: e.message,
      );
    }
  }
}
