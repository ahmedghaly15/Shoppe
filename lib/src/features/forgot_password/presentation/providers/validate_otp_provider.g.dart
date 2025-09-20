// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ValidateOtp)
const validateOtpProvider = ValidateOtpProvider._();

final class ValidateOtpProvider
    extends $NotifierProvider<ValidateOtp, AsyncValue<bool>> {
  const ValidateOtpProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'validateOtpProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$validateOtpHash();

  @$internal
  @override
  ValidateOtp create() => ValidateOtp();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<bool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<bool>>(value),
    );
  }
}

String _$validateOtpHash() => r'0b8596017e48734d1030bd6307ca17965f7bb729';

abstract class _$ValidateOtp extends $Notifier<AsyncValue<bool>> {
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
