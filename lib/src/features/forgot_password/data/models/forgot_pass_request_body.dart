import 'package:json_annotation/json_annotation.dart';

part 'forgot_pass_request_body.g.dart';

@JsonSerializable()
class ForgotPassRequestBody {
  final String email;

  ForgotPassRequestBody({required this.email});

  factory ForgotPassRequestBody.fromJson(Map<String, dynamic> json) =>
      _$ForgotPassRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$ForgotPassRequestBodyToJson(this);
}
