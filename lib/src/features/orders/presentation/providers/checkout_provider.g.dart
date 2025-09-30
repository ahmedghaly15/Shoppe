// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CheckoutProvider)
const checkoutProviderProvider = CheckoutProviderProvider._();

final class CheckoutProviderProvider
    extends
        $NotifierProvider<
          CheckoutProvider,
          AsyncValue<CheckoutRequestResponse>
        > {
  const CheckoutProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkoutProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkoutProviderHash();

  @$internal
  @override
  CheckoutProvider create() => CheckoutProvider();

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

String _$checkoutProviderHash() => r'4ffa2d9a69aa8fd4870d20179a74767a11071bde';

abstract class _$CheckoutProvider
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
