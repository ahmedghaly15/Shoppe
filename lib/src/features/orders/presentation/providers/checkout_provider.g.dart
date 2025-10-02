// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Checkout)
const checkoutProvider = CheckoutProvider._();

final class CheckoutProvider
    extends $NotifierProvider<Checkout, AsyncValue<CheckoutRequestResponse>> {
  const CheckoutProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkoutProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkoutHash();

  @$internal
  @override
  Checkout create() => Checkout();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<CheckoutRequestResponse> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<CheckoutRequestResponse>>(
        value,
      ),
    );
  }
}

String _$checkoutHash() => r'6ea0300dc86ada7cef2003f92768672a2f4bc478';

abstract class _$Checkout
    extends $Notifier<AsyncValue<CheckoutRequestResponse>> {
  AsyncValue<CheckoutRequestResponse> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<CheckoutRequestResponse>,
              AsyncValue<CheckoutRequestResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<CheckoutRequestResponse>,
                AsyncValue<CheckoutRequestResponse>
              >,
              AsyncValue<CheckoutRequestResponse>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
