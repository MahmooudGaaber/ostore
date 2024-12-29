// ignore_for_file: unnecessary_null_comparison

class OstoreValidator {
  //validate email
  static String? isEmailValid(String? email) {
    if (email!.isEmpty || email == null) {
      return 'Email Is Required';
    }
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegex.hasMatch(email)) {
      return 'Invalid Email';
    }
    return null;
  }

//validate password
  static String? isPasswordValid(String? password) {
    if (password!.isEmpty || password == null) {
      return 'Password Is Required';
    }
    if (password.length < 8) {
      return 'Password Must Be At Least 8 Characters';
    }
    return null;
  }

  //validate phone number
  static String? isPhoneNumberValid(String? phoneNumber) {
    if (phoneNumber!.isEmpty || phoneNumber == null) {
      return 'Phone Number Is Required';
    }
    final phoneNumberRegex = RegExp(r'^\+?1?\d{10}$');
    if (!phoneNumberRegex.hasMatch(phoneNumber)) {
      return 'Invalid Phone Number';
    }
    return null;
  }
}
