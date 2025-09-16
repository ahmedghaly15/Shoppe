// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestResponse _$LoginRequestResponseFromJson(
  Map<String, dynamic> json,
) => LoginRequestResponse(
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
  expiresAtUtc: json['expiresAtUtc'] as String,
);

Map<String, dynamic> _$LoginRequestResponseToJson(
  LoginRequestResponse instance,
) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'expiresAtUtc': instance.expiresAtUtc,
};
