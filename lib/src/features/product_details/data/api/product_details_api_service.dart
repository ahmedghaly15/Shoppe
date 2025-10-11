import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/api/api.dart' show EndPoints, dioProvider;
import '../models/add_to_cart_request_body.dart';
import '../models/add_to_cart_request_response.dart';

part 'product_details_api_service.g.dart';

final productDetailsApiServiceProvider =
    Provider.autoDispose<ProductDetailsApiService>((ref) {
      final dio = ref.read(dioProvider);
      return ProductDetailsApiService(dio);
    });

@RestApi()
abstract class ProductDetailsApiService {
  factory ProductDetailsApiService(Dio dio, {String baseUrl}) =
      _ProductDetailsApiService;

  @POST(EndPoints.cartItems)
  Future<AddToCartRequestResponse> addToCart(@Body() AddToCartRequestBody body);
}
