import 'package:json_annotation/json_annotation.dart';

part 'reset_pass_request_body.g.dart';

@JsonSerializable()
class ResetPassRequestBody {
  final String email, otp, newPassword;

  ResetPassRequestBody({
    required this.email,
    required this.otp,
    required this.newPassword,
  });

  factory ResetPassRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ResetPassRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ResetPassRequestBodyToJson(this);
}
