// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_code_object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmCodeObjectModel _$ConfirmCodeObjectModelFromJson(
        Map<String, dynamic> json) =>
    ConfirmCodeObjectModel(
      sessionExpiry: json['sessionExpiry'] as int,
      countSmsSend: json['countSmsSend'] as int,
      countTryCode: json['countTryCode'] as int,
    );

Map<String, dynamic> _$ConfirmCodeObjectModelToJson(
        ConfirmCodeObjectModel instance) =>
    <String, dynamic>{
      'sessionExpiry': instance.sessionExpiry,
      'countSmsSend': instance.countSmsSend,
      'countTryCode': instance.countTryCode,
    };
