// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartRequestResponse _$AddToCartRequestResponseFromJson(
  Map<String, dynamic> json,
) => AddToCartRequestResponse(
  message: json['message'] as String,
  id: json['id'] as String,
  productId: json['productId'] as String,
  quantity: (json['quantity'] as num).toInt(),
);

Map<String, dynamic> _$AddToCartRequestResponseToJson(
  AddToCartRequestResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'id': instance.id,
  'productId': instance.productId,
  'quantity': instance.quantity,
};
