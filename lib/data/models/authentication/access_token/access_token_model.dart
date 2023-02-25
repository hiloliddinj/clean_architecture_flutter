import '../../../../domain/entities/authentication/access_token/access_token.dart';

class AccessTokenModel extends AccessToken {
  AccessTokenModel({
    required String accessToken,
  }) : super(
          accessToken: accessToken,
        );

  AccessTokenModel.fromJson(Map<String, dynamic> parsedJson)
      : super(
          accessToken: parsedJson['accessToken'],
        );
}
