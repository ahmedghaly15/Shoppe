// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckoutRequestResponse _$CheckoutRequestResponseFromJson(
  Map<String, dynamic> json,
) => CheckoutRequestResponse(
  message: json['message'] as String,
  unifiedCheckoutUrl: json['unifiedCheckoutUrl'] as String,
  paymentClientSecret: json['paymentClientSecret'] as String,
);

Map<String, dynamic> _$CheckoutRequestResponseToJson(
  CheckoutRequestResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'unifiedCheckoutUrl': instance.unifiedCheckoutUrl,
  'paymentClientSecret': instance.paymentClientSecret,
};
