// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_offers_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FetchOffersProvider)
const fetchOffersProviderProvider = FetchOffersProviderProvider._();

final class FetchOffersProviderProvider
    extends
        $NotifierProvider<
          FetchOffersProvider,
          AsyncValue<FetchOffersRequestResponse>
        > {
  const FetchOffersProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchOffersProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchOffersProviderHash();

  @$internal
  @override
  FetchOffersProvider create() => FetchOffersProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<FetchOffersRequestResponse> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<FetchOffersRequestResponse>>(value),
    );
  }
}

String _$fetchOffersProviderHash() =>
    r'58ee0bab6da9ca4cf61009a5f3b4b15af1cda666';

abstract class _$FetchOffersProvider
    extends $Notifier<AsyncValue<FetchOffersRequestResponse>> {
  AsyncValue<FetchOffersRequestResponse> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<FetchOffersRequestResponse>,
              AsyncValue<FetchOffersRequestResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<FetchOffersRequestResponse>,
                AsyncValue<FetchOffersRequestResponse>
              >,
              AsyncValue<FetchOffersRequestResponse>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
