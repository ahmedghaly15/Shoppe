import 'package:json_annotation/json_annotation.dart';

part 'email_request_body.g.dart';

@JsonSerializable()
class EmailRequestBody {
  final String email;

  const EmailRequestBody({required this.email});

  factory EmailRequestBody.fromJson(Map<String, dynamic> json) =>
      _$EmailRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$EmailRequestBodyToJson(this);
}
