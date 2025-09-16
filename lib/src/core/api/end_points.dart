class EndPoints {
  EndPoints._();

  static const String baseUrl = 'https://accessories-eshop.runasp.net/api/';
  static const String auth = '${baseUrl}auth/';
  static const String login = '${auth}login';
  static const String register = '${auth}register';
  static const String verifyEmail = '${auth}verify-email';
}
