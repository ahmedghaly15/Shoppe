import 'package:json_annotation/json_annotation.dart';

part 'checkout_request_body.g.dart';

@JsonSerializable()
class CheckoutRequestBody {
  final String? couponCode;
  final String paymentMethod, shippingAddressId;

  CheckoutRequestBody({
    this.couponCode,
    required this.paymentMethod,
    required this.shippingAddressId,
  });

  factory CheckoutRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CheckoutRequestBodyFromJson(json);
  Map<String, dynamic> toJson() => _$CheckoutRequestBodyToJson(this);
}
