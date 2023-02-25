import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/authentication/confirm_code_response'
    '/confirm_code_reason.dart';

part 'confirm_code_reason_model.g.dart';

@JsonSerializable()
class ConfirmCodeReasonModel extends ConfirmCodeReason {
  ConfirmCodeReasonModel({
    required String confirmCode,
  }) : super(
          confirmCode: confirmCode,
        );

  factory ConfirmCodeReasonModel.fromJson(Map<String, dynamic> json) =>
      _$ConfirmCodeReasonModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmCodeReasonModelToJson(this);
}
