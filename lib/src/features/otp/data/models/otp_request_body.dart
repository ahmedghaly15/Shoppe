import 'package:json_annotation/json_annotation.dart';

part 'otp_request_body.g.dart';

@JsonSerializable()
class OtpRequestBody {
  final String email, otp;

  OtpRequestBody({required this.email, required this.otp});

  factory OtpRequestBody.fromJson(Map<String, dynamic> json) =>
      _$OtpRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$OtpRequestBodyToJson(this);
}
