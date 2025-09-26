import 'package:freezed_annotation/freezed_annotation.dart';

import 'api.dart' show ApiErrorMessage;

part 'api_error_model.g.dart';
part 'api_error_model.freezed.dart';

@freezed
abstract class ApiErrorModel with _$ApiErrorModel {
  @JsonSerializable()
  const factory ApiErrorModel({
    @JsonKey(name: 'status_code') String? statusCode,
    String? message,
    @JsonKey(includeFromJson: true, includeToJson: false) String? errorTypeName,
    dynamic errors,
  }) = _ApiErrorModel;

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  String getAllErrorMsgs() {
    if (errors == null || (errors is List && (errors as List).isEmpty)) {
      return message ?? ApiErrorMessage.defaultError;
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
      return message ?? ApiErrorMessage.defaultError;
    }
  }
}
