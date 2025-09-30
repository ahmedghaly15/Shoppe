import 'package:json_annotation/json_annotation.dart';

part 'checkout_request_response.g.dart';

@JsonSerializable()
class CheckoutRequestResponse {
  final String message, unifiedCheckoutUrl, paymentClientSecret;

  CheckoutRequestResponse({
    required this.message,
    required this.unifiedCheckoutUrl,
    required this.paymentClientSecret,
  });

  factory CheckoutRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckoutRequestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CheckoutRequestResponseToJson(this);
  factory CheckoutRequestResponse.initial() => CheckoutRequestResponse(
    message: '',
    unifiedCheckoutUrl: '',
    paymentClientSecret: '',
  );
}

extension NotEmptyCheckoutResponse on CheckoutRequestResponse {
  bool get isNotEmpty =>
      message.isNotEmpty &&
      unifiedCheckoutUrl.isNotEmpty &&
      paymentClientSecret.isNotEmpty;
}
