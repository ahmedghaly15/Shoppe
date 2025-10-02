// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddToCart)
const addToCartProvider = AddToCartProvider._();

final class AddToCartProvider
    extends $NotifierProvider<AddToCart, AsyncValue<AddToCartRequestResponse>> {
  const AddToCartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addToCartProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addToCartHash();

  @$internal
  @override
  AddToCart create() => AddToCart();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<AddToCartRequestResponse> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<AsyncValue<AddToCartRequestResponse>>(value),
    );
  }
}

String _$addToCartHash() => r'fc3c24cb6fc4d9d763836a55ef4c648b284f9018';

abstract class _$AddToCart
    extends $Notifier<AsyncValue<AddToCartRequestResponse>> {
  AsyncValue<AddToCartRequestResponse> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<AddToCartRequestResponse>,
              AsyncValue<AddToCartRequestResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<AddToCartRequestResponse>,
                AsyncValue<AddToCartRequestResponse>
              >,
              AsyncValue<AddToCartRequestResponse>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
