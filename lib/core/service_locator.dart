import 'package:get_it/get_it.dart';

import '../presentation/pages/authentication/authentication_repositories_locator.dart';
import '../presentation/pages/profile/profile_repositories_locator.dart';
import '../presentation/pages/splash/start_repositories_locator.dart';

GetIt locator = GetIt.instance;

Future<void> initServiceLocator() async {
  await initStartLocator(locator);
  await initAuthenticationLocator(locator);
  await initProfileLocator(locator);
}
