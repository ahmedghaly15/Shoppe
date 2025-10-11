import 'package:json_annotation/json_annotation.dart';

part 'remove_product_from_cart_request_body.g.dart';

@JsonSerializable()
class RemoveProductFromCartRequestBody {
  const RemoveProductFromCartRequestBody({required this.itemId});

  @JsonKey(name: 'id')
  final String itemId;

  factory RemoveProductFromCartRequestBody.fromJson(
    Map<String, dynamic> json,
  ) => _$RemoveProductFromCartRequestBodyFromJson(json);
  Map<String, dynamic> toJson() =>
      _$RemoveProductFromCartRequestBodyToJson(this);
}
