import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../cart.dart' show cartRepoProvider;
import '../../data/models/add_to_cart_request_body.dart';
import '../../data/models/add_to_cart_request_response.dart';
import '../../../../core/api/api_request_result.dart';

part 'add_to_cart_provider.g.dart';

@riverpod
class AddToCart extends _$AddToCart {
  @override
  AsyncValue<AddToCartRequestResponse> build() =>
      AsyncValue.data(AddToCartRequestResponse.initial());

  void addToCart(AddToCartRequestBody body) async {
    state = const AsyncLoading();
    final result = await ref.read(cartRepoProvider).addToCart(body);
    result.when(
      success: (data) => state = AsyncValue.data(data),
      failure: (error) => state = AsyncValue.error(error, StackTrace.current),
    );
  }
}
