import 'dart:convert';

import '../../../../core/error/exeptions.dart';
import '../../../../core/preferences/preferences.dart';
import '../../../models/profile/profile_info/profile_model.dart';


abstract class ProfileLocalDataSource {
  Future<ProfileModel> getProfileInfoFromCache();

  Future<void> cacheProfileInfo({
    required ProfileModel profile,
  });
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final Preferences preferences;

  ProfileLocalDataSourceImpl({
    required this.preferences,
  });

  @override
  Future<ProfileModel> getProfileInfoFromCache() async {
    final jsonString = await preferences.getValue(
      boxName: 'profile',
      key: 'profile',
    );
    if (jsonString != null) {
      return Future.value(ProfileModel.fromJson(jsonString));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheProfileInfo({
    required ProfileModel profile,
  }) async {
    return await preferences.setValue(
      boxName: 'profile',
      key: 'profile',
      value: jsonEncode(profile),
    );
  }
}
