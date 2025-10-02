// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckoutRequestBody _$CheckoutRequestBodyFromJson(Map<String, dynamic> json) =>
    CheckoutRequestBody(
      couponCode: json['couponCode'] as String?,
      paymentMethod: json['paymentMethod'] as String,
      shippingAddressId: json['shippingAddressId'] as String,
    );

Map<String, dynamic> _$CheckoutRequestBodyToJson(
  CheckoutRequestBody instance,
) => <String, dynamic>{
  'couponCode': instance.couponCode,
  'paymentMethod': instance.paymentMethod,
  'shippingAddressId': instance.shippingAddressId,
};
