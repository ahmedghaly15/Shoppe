part of 'api.dart';

class AuthInterceptor extends Interceptor {
  final Ref _ref;

  AuthInterceptor(this._ref);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final storageHelper = _ref.read(secureStorageHelperProvider);
    final cachedLoginResponse = await storageHelper.getCachedLoginResponse();
    final accessToken = cachedLoginResponse?.accessToken;

    if (!accessToken.isNullOrEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // TODO: refresh token flow here...
    }
    return handler.next(err);
  }
}
