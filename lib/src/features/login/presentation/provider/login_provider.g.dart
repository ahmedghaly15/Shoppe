// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Login)
const loginProvider = LoginProvider._();

final class LoginProvider
    extends $NotifierProvider<Login, AsyncValue<LoginRequestResponse>> {
  const LoginProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginHash();

  @$internal
  @override
  Login create() => Login();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<LoginRequestResponse> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<LoginRequestResponse>>(
        value,
      ),
    );
  }
}

String _$loginHash() => r'2c64f84bd96c51f57eb879bd0eaa8e28f0e4c739';

abstract class _$Login extends $Notifier<AsyncValue<LoginRequestResponse>> {
  AsyncValue<LoginRequestResponse> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<LoginRequestResponse>,
              AsyncValue<LoginRequestResponse>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<LoginRequestResponse>,
                AsyncValue<LoginRequestResponse>
              >,
              AsyncValue<LoginRequestResponse>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
