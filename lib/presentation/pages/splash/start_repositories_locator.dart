import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:giftbow_mobile/core/preferences/secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../../core/http_client/http_client.dart';
import '../../../core/platform/network_info.dart';
import '../../../core/preferences/preferences.dart';

Future<void> initStartLocator(GetIt locator) async {
  //! External
  final Preferences preferences = PreferencesImpl(Hive);
  final SecureStorage secureStorage =
      SecureStorageImpl(const FlutterSecureStorage());
  locator.registerLazySingleton(() => preferences);
  locator.registerLazySingleton(() => secureStorage);
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => InternetConnectionChecker());
  locator.registerSingleton<HttpClient>(HttpClientImpl(dio: locator()));

  // * Core
  locator.registerSingleton<NetworkInfo>(NetworkInfoImpl(locator()));
}
