// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_pass_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ResetPass)
const resetPassProvider = ResetPassProvider._();

final class ResetPassProvider
    extends $NotifierProvider<ResetPass, AsyncValue<bool>> {
  const ResetPassProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resetPassProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resetPassHash();

  @$internal
  @override
  ResetPass create() => ResetPass();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<bool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<bool>>(value),
    );
  }
}

String _$resetPassHash() => r'1e5e472e37c6b55f94de185c279e834904cce298';

abstract class _$ResetPass extends $Notifier<AsyncValue<bool>> {
  AsyncValue<bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool>, AsyncValue<bool>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, AsyncValue<bool>>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
