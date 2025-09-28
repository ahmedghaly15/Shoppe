// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_cart_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchCartRequestResponse _$FetchCartRequestResponseFromJson(
  Map<String, dynamic> json,
) => FetchCartRequestResponse(
  cartId: json['cartId'] as String,
  cartItems: (json['cartItems'] as List<dynamic>)
      .map((e) => CartItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FetchCartRequestResponseToJson(
  FetchCartRequestResponse instance,
) => <String, dynamic>{
  'cartId': instance.cartId,
  'cartItems': instance.cartItems.map((e) => e.toJson()).toList(),
};

CartItem _$CartItemFromJson(Map<String, dynamic> json) => CartItem(
  itemId: json['itemId'] as String,
  productId: json['productId'] as String,
  productName: json['productName'] as String,
  productCoverUrl: json['productCoverUrl'] as String,
  productStock: (json['productStock'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  discountPercentage: (json['discountPercentage'] as num).toInt(),
  weightInGrams: (json['weightInGrams'] as num).toDouble(),
  basePricePerUnit: (json['basePricePerUnit'] as num).toDouble(),
  finalPricePerUnit: (json['finalPricePerUnit'] as num).toDouble(),
  totalPrice: (json['totalPrice'] as num).toDouble(),
);

Map<String, dynamic> _$CartItemToJson(CartItem instance) => <String, dynamic>{
  'itemId': instance.itemId,
  'productId': instance.productId,
  'productName': instance.productName,
  'productCoverUrl': instance.productCoverUrl,
  'productStock': instance.productStock,
  'quantity': instance.quantity,
  'discountPercentage': instance.discountPercentage,
  'weightInGrams': instance.weightInGrams,
  'basePricePerUnit': instance.basePricePerUnit,
  'finalPricePerUnit': instance.finalPricePerUnit,
  'totalPrice': instance.totalPrice,
};
