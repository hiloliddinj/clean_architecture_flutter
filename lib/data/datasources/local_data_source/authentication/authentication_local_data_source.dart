import '../../../../const/keys/s_s_const.dart';
import '../../../../core/error/exeptions.dart';
import '../../../../core/preferences/secure_storage.dart';

abstract class AuthenticationLocalDataSource {
  Future<String> getConfirmTokenFromCache();

  Future<void> setCacheConfirmToken({
    required String confirmToken,
  });

  Future<String> getAccessTokenFromCache();

  Future<void> setCacheAccessToken({
    required String accessToken,
  });

  Future<String> getRefreshTokenFromCache();

  Future<void> setCacheRefreshToken({
    required String refreshToken,
  });
}

class AuthenticationLocalDataSourceImpl
    implements AuthenticationLocalDataSource {
  final SecureStorage secureStorage;

  AuthenticationLocalDataSourceImpl({
    required this.secureStorage,
  });

  @override
  Future<String> getAccessTokenFromCache() async {
    String? accessToken =
        await secureStorage.getValue(key: SSConst.accessTokenKey);
    if (accessToken != null) {
      return accessToken;
    } else {
      throw SecureStorageException();
    }
  }

  @override
  Future<String> getConfirmTokenFromCache() async {
    String? confirmToken =
        await secureStorage.getValue(key: SSConst.confirmTokenKey);
    if (confirmToken != null) {
      return confirmToken;
    } else {
      throw SecureStorageException();
    }
  }

  @override
  Future<String> getRefreshTokenFromCache() async {
    String? refreshToken =
        await secureStorage.getValue(key: SSConst.refreshTokenKey);
    if (refreshToken != null) {
      return refreshToken;
    } else {
      throw SecureStorageException();
    }
  }

  @override
  Future<void> setCacheAccessToken({
    required String accessToken,
  }) async {
    return await secureStorage.setValue(
      key: SSConst.accessTokenKey,
      value: accessToken,
    );
  }

  @override
  Future<void> setCacheConfirmToken({
    required String confirmToken,
  }) async {
    return await secureStorage.setValue(
      key: SSConst.confirmTokenKey,
      value: confirmToken,
    );
  }

  @override
  Future<void> setCacheRefreshToken({
    required String refreshToken,
  }) async {
    return await secureStorage.setValue(
      key: SSConst.refreshTokenKey,
      value: refreshToken,
    );
  }
}
