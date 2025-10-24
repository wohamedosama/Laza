/// Constants for Authentication
/// Follows Single Responsibility Principle - centralized constants
class AuthConstants {
  // Private constructor to prevent instantiation
  AuthConstants._();

  // Validation Constants
  static const int minPasswordLength = 8;
  static const int minUsernameLength = 3;
  static const int otpLength = 6;

  // Error Messages
  static const String emailRequiredError = 'Email is required';
  static const String passwordRequiredError = 'Password is required';
  static const String invalidEmailError = 'Invalid email address';
  static const String passwordTooShortError =
      'Password must be at least 8 characters';
  static const String passwordUppercaseError =
      'Password must contain at least one uppercase letter';
  static const String passwordLowercaseError =
      'Password must contain at least one lowercase letter';
  static const String passwordNumberError =
      'Password must contain at least one number';
  static const String passwordSpecialCharError =
      'Password must contain at least one special character';
  static const String usernameRequiredError = 'Username is required';
  static const String usernameTooShortError =
      'Username must be at least 3 characters';
  static const String firstNameRequiredError = 'First name is required';
  static const String otpRequiredError = 'OTP must be 6 digits';

  // Success Messages
  static const String loginSuccessMessage = 'Login successful';
  static const String signupSuccessMessage = 'Signup successful';
  static const String emailVerificationSuccessMessage =
      'Email verified successfully';

  // UI Constants
  static const String loginButtonText = 'Login';
  static const String signupButtonText = 'Sign Up';
  static const String verifyButtonText = 'Verify';
  static const String termsText =
      'By connecting your account confirm that you agree with our ';
  static const String termsHighlightText = 'Term and Condition';
}
