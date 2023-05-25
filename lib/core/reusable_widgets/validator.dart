class Validator {
  static String? validateEmail(String email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(pattern);

    if (email.isEmpty) {
      return 'Required field';
    }

    if (!regExp.hasMatch(email)) {
      return 'please enter a valid email address';
    } else {
      return null;
    }
  }

  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return 'Required field';
    } else if (password.length < 8) {
      return 'enter atleast 8 characters as password';
    }
    return null;
  }
}
