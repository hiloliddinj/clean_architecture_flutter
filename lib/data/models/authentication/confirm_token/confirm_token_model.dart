import '../../../../domain/entities/authentication/confirm_token'
    '/confirm_token.dart';

class ConfirmTokenModel extends ConfirmToken {
  ConfirmTokenModel({
    required String confirmToken,
    required int resendTime,
    required int maxCheckCode,
  }) : super(
          confirmToken: confirmToken,
          resendTime: resendTime,
          maxCheckCode: maxCheckCode,
        );

  ConfirmTokenModel.fromJson(Map<String, dynamic> parsedJson)
      : super(
          confirmToken: parsedJson['confirmToken'],
          resendTime: parsedJson['resendTime'],
          maxCheckCode: parsedJson['maxCheckCode'],
        );
}
