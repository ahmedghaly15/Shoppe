part of 'api.dart';

class AuthInterceptor extends Interceptor {
  final Ref ref;

  AuthInterceptor(this.ref);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final storageHelper = ref.read(secureStorageHelperProvider);
    final token = await storageHelper.getSecuredString('accessToken');

    if (!token.isNullOrEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
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
