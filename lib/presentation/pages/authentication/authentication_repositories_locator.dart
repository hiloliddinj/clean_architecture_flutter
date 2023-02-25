import 'package:get_it/get_it.dart';
import 'package:giftbow_mobile/domain/usecases/authentication/authentication_request.dart';

import '../../../data/datasources/local_data_source/authentication'
    '/authentication_local_data_source.dart';
import '../../../data/datasources/remote_data_source/authentication'
    '/authentication_remote_data_source.dart';
import '../../../data/repositories/authentication'
    '/authentication_repository_impl.dart';
import '../../../domain/repositories/authentication'
    '/authentication_repository.dart';
import '../../../domain/usecases/authentication/confirm_sms_code.dart';
import '../../../domain/usecases/authentication/get_confirm_token.dart';
import '../../../domain/usecases/authentication/get_token_from_local.dart';
import '../../../domain/usecases/authentication/save_token_to_local.dart';
import 'personal_data_create/cubit/personal_data_create_cubit.dart';
import 'auth_phone/cubit/auth_phone_cubit.dart';
import 'auth_pin/cubit/auth_pin_cubit.dart';

Future<void> initAuthenticationLocator(GetIt locator) async {
  // Data sources ---
  locator.registerLazySingleton<AuthenticationRemoteDataSource>(
    () => AuthenticationRemoteDataSourceImp(
      client: locator(),
    ),
  );

  locator.registerLazySingleton<AuthenticationLocalDataSource>(
    () => AuthenticationLocalDataSourceImpl(
      secureStorage: locator(),
    ),
  );

  // Repository ---
  locator.registerSingleton<AuthenticationRepository>(
    AuthenticationRepositoryImpl(
      authenticationRemoteDataSource: locator(),
      authenticationLocalDataSource: locator(),
      networkInfo: locator(),
    ),
  );

  // Use cases ---
  locator.registerLazySingleton(
    () => GetConfirmToken(
      locator(),
    ),
  );

  locator.registerLazySingleton(
    () => ConfirmSmsCode(
      locator(),
    ),
  );
  locator.registerLazySingleton(
    () => AuthenticationRequest(
      locator(),
    ),
  );

  locator.registerLazySingleton(
    () => SaveTokenToLocal(
      locator(),
    ),
  );

  locator.registerLazySingleton(
    () => GetTokenFromLocal(
      locator(),
    ),
  );

  // Bloc & Cubit ---
  locator.registerFactory(
    () => AuthPhoneCubit(
      getConfirmToken: locator(),
      saveTokenToLocal: locator(),
      authenticationRequest: locator(),
    ),
  );

  locator.registerFactory(
    () => AuthPinCubit(
      confirmSmsCode: locator(),
      getConfirmToken: locator(),
      saveTokenToLocal: locator(),
    ),
  );

  locator.registerFactory(
    () => PersonalDataCreateCubit(
      updateProfileInfo: locator(),
      getProfileInfo: locator(),
    ),
  );
}
