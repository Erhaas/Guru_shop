import 'package:flutter/material.dart';

ThemeData lightThemeCustom() {
  return ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(),
  );
}
