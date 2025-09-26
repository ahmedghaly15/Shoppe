// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    _ApiErrorModel(
      statusCode: json['status_code'] as String?,
      message: json['message'] as String?,
      errorTypeName: json['errorTypeName'] as String?,
      errors: json['errors'],
    );

Map<String, dynamic> _$ApiErrorModelToJson(_ApiErrorModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'errors': instance.errors,
    };
