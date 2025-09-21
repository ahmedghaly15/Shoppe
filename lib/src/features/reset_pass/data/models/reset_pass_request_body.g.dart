// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_pass_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPassRequestBody _$ResetPassRequestBodyFromJson(
  Map<String, dynamic> json,
) => ResetPassRequestBody(
  email: json['email'] as String,
  otp: json['otp'] as String,
  newPassword: json['newPassword'] as String,
);

Map<String, dynamic> _$ResetPassRequestBodyToJson(
  ResetPassRequestBody instance,
) => <String, dynamic>{
  'email': instance.email,
  'otp': instance.otp,
  'newPassword': instance.newPassword,
};
