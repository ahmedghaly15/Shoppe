import 'package:flutter/material.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';

part 'login_request_response.g.dart';

@immutable
@JsonSerializable()
class LoginRequestResponse {
  final String accessToken, refreshToken, expiresAtUtc;

  const LoginRequestResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresAtUtc,
  });

  factory LoginRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestResponseToJson(this);

  factory LoginRequestResponse.empty() => const LoginRequestResponse(
    accessToken: '',
    refreshToken: '',
    expiresAtUtc: '',
  );
}

extension NotEmptyLoginResponse on LoginRequestResponse {
  bool get isNotEmpty =>
      accessToken.isNotEmpty &&
      refreshToken.isNotEmpty &&
      expiresAtUtc.isNotEmpty;
}
