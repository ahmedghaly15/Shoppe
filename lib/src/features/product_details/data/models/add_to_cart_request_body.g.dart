// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartRequestBody _$AddToCartRequestBodyFromJson(
  Map<String, dynamic> json,
) => AddToCartRequestBody(
  productId: json['productId'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$AddToCartRequestBodyToJson(
  AddToCartRequestBody instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'quantity': instance.quantity,
};
