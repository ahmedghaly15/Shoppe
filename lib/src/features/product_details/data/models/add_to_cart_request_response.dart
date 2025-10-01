import 'package:flutter/material.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_request_response.g.dart';

@immutable
@JsonSerializable()
class AddToCartRequestResponse {
  final String message, id, productId;
  final int quantity;

  const AddToCartRequestResponse({
    required this.message,
    required this.id,
    required this.productId,
    required this.quantity,
  });

  factory AddToCartRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$AddToCartRequestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AddToCartRequestResponseToJson(this);

  factory AddToCartRequestResponse.initial() => const AddToCartRequestResponse(
    message: '',
    id: '',
    productId: '',
    quantity: 0,
  );
}

extension NotEmptyCartRequestResponse on AddToCartRequestResponse {
  bool get isNotEmpty =>
      message.isNotEmpty && id.isNotEmpty && productId.isNotEmpty;
}
