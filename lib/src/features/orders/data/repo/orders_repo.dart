part of '../../orders.dart';

final ordersRepoProvider = Provider.autoDispose<OrdersRepo>((ref) {
  final apiService = ref.read(ordersApiServiceProvider);
  return OrdersRepo(apiService);
});

class OrdersRepo {
  final OrdersApiService _apiService;

  OrdersRepo(this._apiService);

  Future<ApiRequestResult<CheckoutRequestResponse>> checkout(
    CheckoutRequestBody body,
  ) => executeAndHandleApiRequest<CheckoutRequestResponse>(
    () async => await _apiService.checkout(body),
  );

  Future<ApiRequestResult<FetchOrdersRequestResponse>> fetchOrders(
    FetchOrdersRequestBody body,
  ) => executeAndHandleApiRequest<FetchOrdersRequestResponse>(
    () async => await _apiService.fetchOrders(body),
  );
}
