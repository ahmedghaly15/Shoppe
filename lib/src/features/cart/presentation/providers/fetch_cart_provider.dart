part of '../../cart.dart';

final fetchCartProvider = FutureProvider.autoDispose<FetchCartRequestResponse>((
  ref,
) async {
  final result = await ref.read(cartRepoProvider).fetchCart();
  return result.when(
    success: (data) => data,
    failure: (error) => throw error.getAllErrorMsgs(),
  );
});
