import 'package:dartz/dartz.dart';

import '../../../core/error/exeptions.dart';
import '../../../core/error/failure.dart';
import '../../../core/platform/network_info.dart';
import '../../../domain/entities/authentication/access_token/access_token.dart';
import '../../../domain/entities/authentication/authentication'
    '/authentication.dart';
import '../../../domain/entities/authentication/confirm_code_response'
    '/confirm_code_response.dart';
import '../../../domain/entities/authentication/confirm_token'
    '/confirm_token.dart';
import '../../../domain/repositories/authentication'
    '/authentication_repository.dart';
import '../../datasources/local_data_source/authentication'
    '/authentication_local_data_source.dart';
import '../../datasources/remote_data_source/authentication'
    '/authentication_remote_data_source.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final AuthenticationRemoteDataSource authenticationRemoteDataSource;
  final AuthenticationLocalDataSource authenticationLocalDataSource;

  final NetworkInfo networkInfo;

  AuthenticationRepositoryImpl({
    required this.authenticationRemoteDataSource,
    required this.authenticationLocalDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, ConfirmToken>> getConfirmToken(
      {required String phoneNumber}) async {
    if (await networkInfo.isConnected) {
      try {
        final confirmToken =
            await authenticationRemoteDataSource.getConfirmToken(
          phoneNumber: phoneNumber,
        );
        return Right(confirmToken);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.cause));
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, ConfirmCodeResponse>> confirmSmsCode(
      {required String confirmCode, required String confirmToken}) async {
    if (await networkInfo.isConnected) {
      try {
        final confirmCodeResponse =
            await authenticationRemoteDataSource.confirmSmsCode(
          confirmCode: confirmCode,
          confirmToken: confirmToken,
        );
        return Right(confirmCodeResponse);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.cause));
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, Authentication>> authenticationRequest(
      {required String confirmToken}) async {
    if (await networkInfo.isConnected) {
      try {
        final authentication =
            await authenticationRemoteDataSource.authenticationRequest(
          confirmToken: confirmToken,
        );
        return Right(authentication);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.cause));
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, AccessToken>> getAccessToken(
      {required String refreshToken}) async {
    if (await networkInfo.isConnected) {
      try {
        final accessToken = await authenticationRemoteDataSource.getAccessToken(
          refreshToken: refreshToken,
        );
        return Right(accessToken);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.cause));
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, String>> getLocalAccessToken() async {
    try {
      final accessToken =
          await authenticationLocalDataSource.getAccessTokenFromCache();
      return Right(accessToken);
    } on SecureStorageException {
      return Left(
        SecureStorageFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, String>> getLocalConfirmToken() async {
    try {
      final confirmToken =
          await authenticationLocalDataSource.getConfirmTokenFromCache();
      return Right(confirmToken);
    } on SecureStorageException {
      return Left(
        SecureStorageFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, String>> getLocalRefreshToken() async {
    try {
      final refreshToken =
          await authenticationLocalDataSource.getRefreshTokenFromCache();
      return Right(refreshToken);
    } on SecureStorageException {
      return Left(
        SecureStorageFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> setLocalAccessToken({
    required String accessToken,
  }) async {
    try {
      await authenticationLocalDataSource.setCacheAccessToken(
        accessToken: accessToken,
      );
      return const Right(null);
    } on Exception {
      return Left(
        SecureStorageFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> setLocalConfirmToken({
    required String confirmToken,
  }) async {
    try {
      await authenticationLocalDataSource.setCacheConfirmToken(
        confirmToken: confirmToken,
      );
      return const Right(null);
    } on Exception {
      return Left(
        SecureStorageFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> setLocalRefreshToken({
    required String refreshToken,
  }) async {
    try {
      await authenticationLocalDataSource.setCacheRefreshToken(
        refreshToken: refreshToken,
      );
      return const Right(null);
    } on Exception {
      return Left(
        SecureStorageFailure(),
      );
    }
  }
}
