import 'package:json_annotation/json_annotation.dart';

part 'login_request_response.g.dart';

@JsonSerializable()
class LoginRequestResponse {
  final String accessToken, refreshToken, expiresAtUtc;

  LoginRequestResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresAtUtc,
  });

  factory LoginRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestResponseToJson(this);
}
