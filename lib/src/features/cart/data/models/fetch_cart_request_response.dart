import 'package:json_annotation/json_annotation.dart';

part 'fetch_cart_request_response.g.dart';

@JsonSerializable(explicitToJson: true)
class FetchCartRequestResponse {
  final String cartId;
  final List<CartItem> cartItems;

  FetchCartRequestResponse({required this.cartId, required this.cartItems});

  factory FetchCartRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchCartRequestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchCartRequestResponseToJson(this);
}

@JsonSerializable()
class CartItem {
  final String itemId, productId, productName, productCoverUrl;
  final int productStock, quantity, discountPercentage;
  final double weightInGrams, basePricePerUnit, finalPricePerUnit, totalPrice;

  CartItem({
    required this.itemId,
    required this.productId,
    required this.productName,
    required this.productCoverUrl,
    required this.productStock,
    required this.quantity,
    required this.discountPercentage,
    required this.weightInGrams,
    required this.basePricePerUnit,
    required this.finalPricePerUnit,
    required this.totalPrice,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) =>
      _$CartItemFromJson(json);
  Map<String, dynamic> toJson() => _$CartItemToJson(this);
}
