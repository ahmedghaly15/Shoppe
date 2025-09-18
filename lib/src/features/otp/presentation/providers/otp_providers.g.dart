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

String _$verifyEmailHash() => r'45fc5d9ea0416bd13e29dde134c4ca168b069232';

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

String _$resendOtpHash() => r'da0b1bb6a1c3f262244ffd6a95acc4682b0dde09';

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

String _$validateOtpHash() => r'2b6421abc277cce6831857026ce94c11e28659c4';

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
