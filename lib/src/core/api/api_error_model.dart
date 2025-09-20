import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  @JsonKey(name: 'status_code')
  final String? statusCode;
  final String message;
  final dynamic errors;

  const ApiErrorModel({required this.message, this.statusCode, this.errors});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String getAllErrorMsgs() {
    if (errors == null || (errors is List && (errors as List).isEmpty)) {
      return message;
    }

    if (errors is Map<String, dynamic>) {
      final errorMessage = (errors as Map<String, dynamic>).entries
          .map((entry) {
            final value = entry.value;
            return "${value.join(',')}";
          })
          .join('\n');

      return errorMessage;
    } else if (errors is List) {
      return (errors as List).join('\n');
    } else {
      return message;
    }
  }
}
