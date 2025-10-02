part of 'api.dart';

class EndPoints {
  EndPoints._();

  static const String baseUrl = 'https://accessories-eshop.runasp.net/api/';
  static const String auth = '${baseUrl}auth/';
  static const String login = '${auth}login';
  static const String register = '${auth}register';
  static const String verifyEmail = '${auth}verify-email';
  static const String forgotPass = '${auth}forgot-password';
  static const String resendOtp = '${auth}resend-otp';
  static const String validateOtp = '${auth}validate-otp';
  static const String resetPass = '${auth}reset-password';
  static const String fetchOffers = '${baseUrl}offers';
  static const String fetchCategories = '${baseUrl}categories';
  static const String products = '${baseUrl}products';
  static const String reviews = '${baseUrl}reviews';
  static const String cart = '${baseUrl}cart/';
  static const String addToCart = '${cart}items';
  static const String orders = '${baseUrl}orders/';
  static const String checkout = '${orders}checkout';
  static const String me = '${auth}me';
}
