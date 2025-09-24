part of '../../home.dart';

final fetchOffersProvider =
    FutureProvider.autoDispose<FetchOffersRequestResponse>((ref) async {
      const body = FetchOffersRequestBody(page: 1, pageSize: 10);
      final result = await ref.read(homeRepoProvider).fetchOffers(body);
      return result.when(
        success: (data) {
          ref
              .read(offersLengthProvider.notifier)
              .update(data.offers?.items?.length);
          return data;
        },
        failure: (error) => throw error.getAllErrorMsgs(),
      );
    });

class _CurrentOfferIndexNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void setCurrentIndex(int index) => state = index;
}

final currentOfferIndexProvider =
    NotifierProvider.autoDispose<_CurrentOfferIndexNotifier, int>(
      _CurrentOfferIndexNotifier.new,
    );

class _OffersLengthNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void update(int? length) => state = length ?? 0;
}

final offersLengthProvider = NotifierProvider<_OffersLengthNotifier, int>(
  _OffersLengthNotifier.new,
);
