import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/api/api_request_result.dart';
import '../../data/models/fetch_offers_request_body.dart';
import '../../data/models/fetch_offers_request_response.dart';
import '../../home.dart' show homeRepoProvider;

part 'fetch_offers_provider.g.dart';

@riverpod
class FetchOffersProvider extends _$FetchOffersProvider {
  @override
  AsyncValue<FetchOffersRequestResponse> build() =>
      AsyncValue.data(FetchOffersRequestResponse.empty());

  void fetchOffers() async {
    state = const AsyncValue.loading();
    const body = FetchOffersRequestBody();
    final result = await ref.read(homeRepoProvider).fetchOffers(body);
    result.when(
      success: (response) => state = AsyncValue.data(response),
      failure: (error) =>
          state = AsyncValue.error(error.getAllErrorMsgs(), StackTrace.current),
    );
  }
}
