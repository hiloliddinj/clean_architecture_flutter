// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_confirm_props_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailConfirmPropsModel _$EmailConfirmPropsModelFromJson(
        Map<String, dynamic> json) =>
    EmailConfirmPropsModel(
      newEmail: json['newEmail'] as String?,
      countTryCode: json['countTryCode'] as int?,
      maxCheckCode: json['maxCheckCode'] as int?,
    );

Map<String, dynamic> _$EmailConfirmPropsModelToJson(
        EmailConfirmPropsModel instance) =>
    <String, dynamic>{
      'newEmail': instance.newEmail,
      'countTryCode': instance.countTryCode,
      'maxCheckCode': instance.maxCheckCode,
    };
