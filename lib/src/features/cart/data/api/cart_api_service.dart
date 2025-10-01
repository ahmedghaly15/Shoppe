import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart' show EndPoints, dioProvider;
import '../models/fetch_cart_request_response.dart';

part 'cart_api_service.g.dart';

final cartApiServiceProvider = Provider.autoDispose<CartApiService>((ref) {
  final dio = ref.read(dioProvider);
  return CartApiService(dio);
});

@RestApi()
abstract class CartApiService {
  factory CartApiService(Dio dio, {String baseUrl}) = _CartApiService;

  @GET(EndPoints.cart)
  Future<FetchCartRequestResponse> fetchCart();
}
