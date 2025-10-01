import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/add_to_cart_request_body.dart';
import '../../data/models/add_to_cart_request_response.dart';
import '../../../../core/api/api_request_result.dart';
import '../../product_details.dart'
    show productDetailsRepoProvider, productQuantityProvider;

part 'add_to_cart_provider.g.dart';

@riverpod
class AddToCart extends _$AddToCart {
  @override
  AsyncValue<AddToCartRequestResponse> build() =>
      AsyncValue.data(AddToCartRequestResponse.initial());

  void addToCart(String productId) async {
    state = const AsyncLoading();
    final body = AddToCartRequestBody(
      productId: productId,
      quantity: ref.watch(productQuantityProvider),
    );
    final result = await ref.read(productDetailsRepoProvider).addToCart(body);
    result.when(
      success: (data) => state = AsyncValue.data(data),
      failure: (error) => state = AsyncValue.error(error, StackTrace.current),
    );
  }
}
