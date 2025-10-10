import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart' show EndPoints, dioProvider;
import '../../../../core/models/product.dart';
import '../models/checkout_request_body.dart';
import '../models/checkout_request_response.dart';
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

  @POST(EndPoints.checkout)
  Future<CheckoutRequestResponse> checkout(@Body() CheckoutRequestBody body);

  @GET('${EndPoints.products}/{Id}')
  Future<Product> fetchProduct(@Path('Id') String productId);
}
