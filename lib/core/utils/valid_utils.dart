class ValidUtils  {
  static String? ifValidPassword(String? text) {

    if (text == null || text.trim().isEmpty) {
      return "Please enter your password";
    }
    if (text.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }
  static String? ifValidEmail(String? text) {
    String msgError = 'Please enter your email address';
    String msgErrorValid = 'Please enter a valid email address';

    bool emailValid;
    if (text == null || text.trim().isEmpty) {
      return " $msgError ";
    }
    emailValid = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(text);
    if (!emailValid) {
      return " $msgErrorValid ";
    }
    return null;

  }

}
