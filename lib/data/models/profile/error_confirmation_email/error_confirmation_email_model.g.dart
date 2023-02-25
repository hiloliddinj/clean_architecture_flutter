// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_confirmation_email_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorConformationEmailModel _$ErrorConformationEmailModelFromJson(
        Map<String, dynamic> json) =>
    ErrorConformationEmailModel(
      sessionExpiry: json['sessionExpiry'] as int,
      countTryCode: json['countTryCode'] as int,
    );

Map<String, dynamic> _$ErrorConformationEmailModelToJson(
        ErrorConformationEmailModel instance) =>
    <String, dynamic>{
      'sessionExpiry': instance.sessionExpiry,
      'countTryCode': instance.countTryCode,
    };
