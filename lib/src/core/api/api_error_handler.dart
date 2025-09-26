part of 'api.dart';

class ApiErrorHandler {
  ApiErrorHandler._();

  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(
            message: ApiErrorMessage.connectionTimeoutError,
            errorTypeName: error.name,
          );
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            message: ApiErrorMessage.sendTimeoutError,
            errorTypeName: error.name,
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            message: ApiErrorMessage.receiveTimeoutError,
            errorTypeName: error.name,
          );
        case DioExceptionType.badResponse:
        case DioExceptionType.unknown:
          return _handleError(error);
        case DioExceptionType.cancel:
          return ApiErrorModel(
            message: ApiErrorMessage.cancelError,
            errorTypeName: error.name,
          );
        case DioExceptionType.connectionError:
          return ApiErrorModel(
            message: ApiErrorMessage.noInternetError,
            errorTypeName: error.name,
          );
        case DioExceptionType.badCertificate:
          return ApiErrorModel(
            message: ApiErrorMessage.badCertificateError,
            errorTypeName: error.name,
          );
      }
    } else {
      return ApiErrorModel(
        message: ApiErrorMessage.defaultError,
        errorTypeName: error.name,
      );
    }
  }

  static ApiErrorModel _handleError(DioException error) {
    if (error.response != null &&
        error.response?.statusCode != null &&
        error.response?.statusMessage != null) {
      return ApiErrorModel.fromJson(
        error.response!.data,
      ).copyWith(errorTypeName: error.name);
    } else {
      return ApiErrorModel(
        message: ApiErrorMessage.defaultError,
        errorTypeName: error.name,
      );
    }
  }
}
