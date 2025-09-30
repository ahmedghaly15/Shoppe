// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_orders_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchOrdersRequestResponse _$FetchOrdersRequestResponseFromJson(
  Map<String, dynamic> json,
) => FetchOrdersRequestResponse(
  message: json['message'] as String,
  orders: (json['orders'] as List<dynamic>)
      .map((e) => Order.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FetchOrdersRequestResponseToJson(
  FetchOrdersRequestResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'orders': instance.orders.map((e) => e.toJson()).toList(),
};

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
  orderId: json['orderId'] as String?,
  orderCode: json['orderCode'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  status: json['status'] as String?,
  totalPrice: json['totalPrice'] as String?,
  paymentMethod: json['paymentMethod'] as String?,
);

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
  'orderId': instance.orderId,
  'orderCode': instance.orderCode,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'status': instance.status,
  'totalPrice': instance.totalPrice,
  'paymentMethod': instance.paymentMethod,
};
