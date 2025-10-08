import 'package:flutter/material.dart';

import 'dark_theme.dart';
import 'light_theme.dart';

/// App theme configuration
/// Handles light and dark theme modes
class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();

  /// Light Theme
  static ThemeData get lightTheme => LightTheme.theme;

  /// Dark Theme
  static ThemeData get darkTheme => DarkTheme.theme;
}
