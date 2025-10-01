import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_request_body.g.dart';

@JsonSerializable()
class AddToCartRequestBody {
  final String productId;
  final int quantity;

  AddToCartRequestBody({required this.productId, required this.quantity});

  factory AddToCartRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AddToCartRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$AddToCartRequestBodyToJson(this);
}
