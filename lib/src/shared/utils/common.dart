import 'package:flutter/material.dart';
import 'package:guru_shop/gen/fonts.gen.dart';

TextTheme textTheme(Color? color) {
  return TextTheme(
    displayLarge:
        TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: color),
    titleLarge:
        TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: color),
    titleMedium:
        TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: color),
    titleSmall:
        TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: color),
    bodyLarge:
        TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: color),
    bodyMedium:
        TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: color),
    bodySmall:
        TextStyle(fontSize: 10, fontWeight: FontWeight.w300, color: color),
  ).apply(fontFamily: FontFamily.poppins);
}
