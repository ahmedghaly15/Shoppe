part of 'api.dart';

final dioProvider = Provider<Dio>((ref) => DioFactory.getDio(ref));

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? _dio;

  static Dio getDio(Ref ref) {
    const Duration timeOut = Duration(seconds: 30);
    if (_dio == null) {
      _dio = Dio();
      _dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers = {'Content-Type': 'application/json'};
      _addDioInterceptors(ref);
      return _dio!;
    } else {
      return _dio!;
    }
  }

  static void _addDioInterceptors(Ref ref) {
    _dio?.interceptors.add(DioInterceptor());
    _dio?.interceptors.add(AuthInterceptor(ref));
    _dio?.interceptors.add(
      LogInterceptor(request: true, requestBody: true, responseBody: true),
    );
  }

  static void setTokenIntoHeaders(String token) {
    _dio?.options.headers = {'Authorization': 'Bearer $token'};
  }
}
