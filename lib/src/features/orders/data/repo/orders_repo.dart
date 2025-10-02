part of '../../orders.dart';

final ordersRepoProvider = Provider.autoDispose<OrdersRepo>((ref) {
  final apiService = ref.read(ordersApiServiceProvider);
  return OrdersRepoImpl(apiService);
});

abstract class OrdersRepo {
  Future<ApiRequestResult<FetchOrdersRequestResponse>> fetchOrders(
    FetchOrdersRequestBody body,
  );
}

class OrdersRepoImpl extends OrdersRepo {
  final OrdersApiService _apiService;

  OrdersRepoImpl(this._apiService);

  @override
  Future<ApiRequestResult<FetchOrdersRequestResponse>> fetchOrders(
    FetchOrdersRequestBody body,
  ) => executeAndHandleApiRequest<FetchOrdersRequestResponse>(
    () async => await _apiService.fetchOrders(body),
  );
}
