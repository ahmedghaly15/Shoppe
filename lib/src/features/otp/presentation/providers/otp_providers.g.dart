// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VerifyEmail)
const verifyEmailProvider = VerifyEmailProvider._();

final class VerifyEmailProvider
    extends $NotifierProvider<VerifyEmail, AsyncValue<bool>> {
  const VerifyEmailProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'verifyEmailProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$verifyEmailHash();

  @$internal
  @override
  VerifyEmail create() => VerifyEmail();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<bool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<bool>>(value),
    );
  }
}

String _$verifyEmailHash() => r'64be6123e82fcb453eb3aec896e0cad4e3b9a180';

abstract class _$VerifyEmail extends $Notifier<AsyncValue<bool>> {
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

@ProviderFor(ResendOtp)
const resendOtpProvider = ResendOtpProvider._();

final class ResendOtpProvider
    extends $NotifierProvider<ResendOtp, AsyncValue<bool>> {
  const ResendOtpProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resendOtpProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resendOtpHash();

  @$internal
  @override
  ResendOtp create() => ResendOtp();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<bool> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<bool>>(value),
    );
  }
}

String _$resendOtpHash() => r'68befdebd870f2311089c2de800d0c0e7bc9324d';

abstract class _$ResendOtp extends $Notifier<AsyncValue<bool>> {
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
