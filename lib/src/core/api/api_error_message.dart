part of 'api.dart';

class ApiErrorMessage {
  ApiErrorMessage._();

  static const String defaultError =
      'Oops! Something went wrong.\nDon\'t worry, we\'re working on it.';
  static const String noInternetError =
      'No internet connection. Please check your internet connection and try again.';
  static const String cancelError = 'Request cancelled. Please try again.';
  static const String connectionTimeoutError =
      'Connection timeout. Please check your internet connection and try again.';
  static const String sendTimeoutError =
      'The request took too long to be sent. Please try again.';
  static const String receiveTimeoutError =
      'The request took too long to complete. Please try again.';
  static const String badCertificateError =
      'Incorrect certificate. Please try again.';
}
