import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/api/api_request_result.dart';
import '../../data/models/checkout_request_body.dart';
import '../../data/models/checkout_request_response.dart';
import '../../orders.dart' show ordersRepoProvider;

part 'checkout_provider.g.dart';

@riverpod
class Checkout extends _$Checkout {
  @override
  AsyncValue<CheckoutRequestResponse> build() =>
      AsyncValue.data(CheckoutRequestResponse.initial());

  void checkout(CheckoutRequestBody body) async {
    state = const AsyncLoading();
    final result = await ref.read(ordersRepoProvider).checkout(body);
    result.when(
      success: (data) => state = AsyncValue.data(data),
      failure: (error) => state = AsyncValue.error(error, StackTrace.current),
    );
  }
}
