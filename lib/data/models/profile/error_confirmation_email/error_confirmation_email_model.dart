import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/profile/error_confirmation_email/error_confirmation_email.dart';

part 'error_confirmation_email_model.g.dart';

@JsonSerializable()
class ErrorConformationEmailModel extends ErrorConformationEmail {

  ErrorConformationEmailModel({
    required int sessionExpiry,
    required int countTryCode,
  }) : super(
    sessionExpiry: sessionExpiry,
    countTryCode: countTryCode,
  );

  factory ErrorConformationEmailModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorConformationEmailModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorConformationEmailModelToJson(this);

}
