import 'package:dartz/dartz.dart';

import '../../../core/error/exeptions.dart';
import '../../../core/error/failure.dart';
import '../../../core/platform/network_info.dart';
import '../../../domain/entities/authentication/authentication'
    '/authentication.dart';
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

        await authenticationLocalDataSource.setCacheConfirmToken(
          confirmToken: confirmToken.confirmToken,
        );

        var authentication = await authenticationRequest();

        authentication.fold(
          (l) => null,
          (r) async {
            await authenticationLocalDataSource.setCacheAccessToken(
              accessToken: r.accessToken,
            );

            await authenticationLocalDataSource.setCacheRefreshToken(
              refreshToken: r.refreshToken,
            );
          },
        );

        return Right(
          confirmToken,
        );
      } on ServerException catch (e) {
        return Left(
          ServerFailure(
            e.cause,
          ),
        );
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> confirmSmsCode({
    required String confirmCode,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        await authenticationRemoteDataSource.confirmSmsCode(
          confirmCode: confirmCode,
        );
        return const Right(null);
      } on ServerException catch (e) {
        return Left(
          ServerFailure(
            e.cause,
          ),
        );
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, Authentication>> authenticationRequest() async {
    if (await networkInfo.isConnected) {
      try {
        String confirmToken =
            await authenticationLocalDataSource.getConfirmTokenFromCache();

        final authentication =
            await authenticationRemoteDataSource.authenticationRequest(
          confirmToken: confirmToken,
        );
        return Right(
          authentication,
        );
      } on ServerException catch (e) {
        return Left(
          ServerFailure(
            e.cause,
          ),
        );
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }

  @override
  Future<Either<Failure, void>> getAccessToken() async {
    if (await networkInfo.isConnected) {
      try {
        String refreshToken =
            await authenticationLocalDataSource.getRefreshTokenFromCache();

        final accessToken = await authenticationRemoteDataSource.getAccessToken(
          refreshToken: refreshToken,
        );
        await authenticationLocalDataSource.setCacheAccessToken(
          accessToken: accessToken,
        );

        return const Right(
          null,
        );
      } on ServerException catch (e) {
        return Left(
          ServerFailure(
            e.cause,
          ),
        );
      }
    } else {
      return Left(
        InternetFailure(),
      );
    }
  }
}
