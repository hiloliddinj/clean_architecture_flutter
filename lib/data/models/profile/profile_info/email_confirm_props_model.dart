import 'package:json_annotation/json_annotation.dart';

import '../../../../domain/entities/profile/profile_info/email_confirm_props.dart';

part 'email_confirm_props_model.g.dart';

@JsonSerializable()
class EmailConfirmPropsModel extends EmailConfirmProps {
  EmailConfirmPropsModel({
    String? newEmail,
    int? countTryCode,
    int? maxCheckCode,
  }) : super(
    newEmail: newEmail,
    countTryCode: countTryCode,
    maxCheckCode: maxCheckCode,
  );

  factory EmailConfirmPropsModel.fromJson(Map<String, dynamic> json) =>
      _$EmailConfirmPropsModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmailConfirmPropsModelToJson(this);
}