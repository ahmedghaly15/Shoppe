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

String _$loginHash() => r'da7b8c2ffb0865bd2aca381c9f649d483b8fef9b';

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
