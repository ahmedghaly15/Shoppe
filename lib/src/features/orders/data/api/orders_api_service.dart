import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart';
import '../models/checkout_request_body.dart';
import '../models/checkout_request_response.dart';

part 'orders_api_service.g.dart';

final ordersApiServiceProvider = Provider.autoDispose<OrdersApiService>((ref) {
  final dio = ref.read(dioProvider);
  return OrdersApiService(dio);
});

@RestApi()
abstract class OrdersApiService {
  factory OrdersApiService(Dio dio, {String baseUrl}) = _OrdersApiService;

  @POST(EndPoints.checkout)
  Future<CheckoutRequestResponse> checkout(@Body() CheckoutRequestBody body);
}
