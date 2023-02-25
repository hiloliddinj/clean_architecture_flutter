import 'package:get_it/get_it.dart';

import '../../../data/datasources/local_data_source/profile/profile_local_data_source.dart';
import '../../../data/datasources/remote_data_source/profile/profile_remote_data_source.dart';
import '../../../data/repositories/profile/profile_repository_impl.dart';
import '../../../domain/repositories/profile/profile_repository.dart';
import '../../../domain/usecases/profile/confirmation_email_change.dart';
import '../../../domain/usecases/profile/get_profile_info.dart';
import '../../../domain/usecases/profile/get_profile_local_info.dart';
import '../../../domain/usecases/profile/update_email.dart';
import '../../../domain/usecases/profile/update_profile_avatar.dart';
import '../../../domain/usecases/profile/update_profile_info.dart';
import 'avatar_edit/cubit/avatar_edit_cubit.dart';
import 'email_confirmation/cubit/email_confirmation_cubit.dart';
import 'email_edit/cubit/email_edit_cubit.dart';
import 'personal_data_edit/cubit/personal_data_edit_cubit.dart';
import 'profile/bloc/profile_bloc.dart';

Future<void> initProfileLocator(GetIt locator) async {
  //! Features - Profile
  // Data sources
  locator.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(
      client: locator(),
    ),
  );

  locator.registerLazySingleton<ProfileLocalDataSource>(
    () => ProfileLocalDataSourceImpl(
      preferences: locator(),
    ),
  );

  // Repository
  locator.registerSingleton<ProfileRepository>(
    ProfileRepositoryImpl(
      profileLocalDataSource: locator(),
      profileRemoveDataSource: locator(),
      networkInfo: locator(),
    ),
  );

  // Use cases
  locator.registerLazySingleton(
    () => GetProfileInfo(
      locator(),
    ),
  );

  locator.registerLazySingleton(
    () => GetProfileLocalInfo(
      locator(),
    ),
  );

  locator.registerLazySingleton(
    () => UpdateProfileAvatar(
      locator(),
    ),
  );

  locator.registerLazySingleton(
    () => UpdateProfileInfo(
      locator(),
    ),
  );

  locator.registerLazySingleton(
    () => ConfirmationEmailChange(
      locator(),
    ),
  );

  locator.registerLazySingleton(
    () => UpdateEmail(
      locator(),
    ),
  );

  // Bloc & Cubit
  locator.registerSingleton<ProfileBloc>(
    ProfileBloc(
      getProfileInfo: locator(),
      getProfileLocalInfo: locator(),
      updateProfileAvatar: locator(),
    ),
  );

  locator.registerFactory(
    () => AvatarEditCubit(
      updateProfileAvatar: locator(),
    ),
  );

  locator.registerFactory(
    () => PersonalDataEditCubit(
      updateProfileInfo: locator(),
      getProfileInfo: locator(),
    ),
  );

  locator.registerFactory(
    () => EmailEditCubit(
      updateEmail: locator(),
      getProfileInfo: locator(),
    ),
  );

  locator.registerFactory(
    () => EmailConfirmationCubit(
      confirmationEmailChange: locator(),
      getProfileInfo: locator(),
    ),
  );
}
