import 'package:shoppe/src/core/helpers/extensions.dart';

import '../utils/app_regex.dart';

class InputFieldValidator {
  InputFieldValidator._();

  static String? validateEmailField(String? value) {
    if (value.isNullOrEmpty) {
      return "Email can't be blank!";
    } else if (!AppRegex.isEmailValid(value!)) {
      return "Please enter a valid email";
    }
    return null;
  }

  static String? validatePasswordField(String? value) {
    if (value.isNullOrEmpty) {
      return "Password can't be blank!";
    } else if (!AppRegex.isPasswordValid(value!)) {
      return "Please enter a valid password";
    }
    return null;
  }

  static String? validateNameField(String? value) {
    if (value.isNullOrEmpty) {
      return "Name can't be blank!";
    } else if (value!.split(' ').length < 2) {
      return 'Please enter your last name';
    } else if (value.length < 2) {
      return "Name must be at least 2 characters long";
    }
    return null;
  }

  static String? validateOtpField(String? value) {
    if (value.isNullOrEmpty) {
      return "OTP can't be blank!";
    } else if (value?.length != 6) {
      return "Please enter a valid OTP";
    }
    return null;
  }
}
