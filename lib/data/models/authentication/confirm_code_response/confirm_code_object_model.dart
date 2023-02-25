import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/authentication/confirm_code_response'
    '/confirm_code_object.dart';

part 'confirm_code_object_model.g.dart';

@JsonSerializable()
class ConfirmCodeObjectModel extends ConfirmCodeObject {
  ConfirmCodeObjectModel({
    required int sessionExpiry,
    required int countSmsSend,
    required int countTryCode,
  }) : super(
          sessionExpiry: sessionExpiry,
          countSmsSend: countSmsSend,
          countTryCode: countTryCode,
        );

  factory ConfirmCodeObjectModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmCodeObjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmCodeObjectModelToJson(this);
}
