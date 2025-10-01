import 'package:flutter/material.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';

part 'fetch_orders_request_response.g.dart';

@immutable
@JsonSerializable(explicitToJson: true)
class FetchOrdersRequestResponse {
  final String message;
  final List<Order> orders;

  const FetchOrdersRequestResponse({
    required this.message,
    required this.orders,
  });

  factory FetchOrdersRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchOrdersRequestResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FetchOrdersRequestResponseToJson(this);
}

@immutable
@JsonSerializable()
class Order {
  final String? orderId,
      orderCode,
      createdAt,
      updatedAt,
      status,
      totalPrice,
      paymentMethod;

  const Order({
    this.orderId,
    this.orderCode,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.totalPrice,
    this.paymentMethod,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
