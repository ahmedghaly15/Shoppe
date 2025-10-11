part of '../../orders.dart';

final fetchOrdersProvider =
    FutureProvider.autoDispose<FetchOrdersRequestResponse>((ref) async {
      const body = FetchOrdersRequestBody();
      final result = await ref.read(ordersRepoProvider).fetchOrders(body);
      return result.when(
        success: (data) => data,
        failure: (error) => throw error.getAllErrorMsgs,
      );
    });
