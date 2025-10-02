import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart';
import '../models/fetch_orders_request_body.dart';
import '../models/fetch_orders_request_response.dart';

part 'orders_api_service.g.dart';

final ordersApiServiceProvider = Provider.autoDispose<OrdersApiService>((ref) {
  final dio = ref.read(dioProvider);
  return OrdersApiService(dio);
});

@RestApi()
abstract class OrdersApiService {
  factory OrdersApiService(Dio dio, {String baseUrl}) = _OrdersApiService;

  @GET(EndPoints.orders)
  Future<FetchOrdersRequestResponse> fetchOrders(
    @Body() FetchOrdersRequestBody body,
  );
}
