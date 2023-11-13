import 'package:flutter/material.dart';
import 'package:guru_shop/gen/fonts.gen.dart';
import 'package:guru_shop/src/shared/utils/theme/colors.dart';

ThemeData lightThemeCustom() {
  return ThemeData.light().copyWith(
      primaryColor: primaryBlue,
      colorScheme: const ColorScheme.light(
          primary: primaryBlue,
          secondary: neuralGrey,
          surface: whiteColor,
          background: whiteColor),
      appBarTheme: const AppBarTheme(backgroundColor: whiteColor),
      textTheme: const TextTheme(
          displayLarge: TextStyle(
              color: neuralDark,
              fontFamily: FontFamily.poppins,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          titleLarge: TextStyle(
              color: neuralDark,
              fontFamily: FontFamily.poppins,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
              color: neuralDark,
              fontFamily: FontFamily.poppins,
              fontSize: 16,
              fontWeight: FontWeight.bold),
          titleSmall: TextStyle(
              color: neuralDark,
              fontFamily: FontFamily.poppins,
              fontSize: 14,
              fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(
              color: neuralGrey,
              fontFamily: FontFamily.poppins,
              fontSize: 12,
              fontWeight: FontWeight.w600),
          bodyMedium: TextStyle(
              color: neuralDark, fontFamily: FontFamily.poppins, fontSize: 12),
          bodySmall: TextStyle(
            color: neuralGrey,
            fontFamily: FontFamily.poppins,
            fontSize: 12,
          )),
      textSelectionTheme: const TextSelectionThemeData(cursorColor: neuralGrey),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(primaryBlue),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(color: whiteColor)))),
      inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          fillColor: whiteColor,
          prefixIconColor: neuralGrey,
          suffixIconColor: neuralGrey,
          helperStyle: TextStyle(
              fontSize: 15,
              color: neuralGrey,
              fontFamily: FontFamily.poppins,
              fontWeight: FontWeight.w200),
          hintStyle: TextStyle(
              fontSize: 12,
              color: neuralGrey,
              fontFamily: FontFamily.poppins,
              fontWeight: FontWeight.normal),
          labelStyle: TextStyle(
              fontSize: 15, color: neuralGrey, fontWeight: FontWeight.w300),
          errorStyle: TextStyle(color: primaryRed),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: primaryRed),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: primaryBlue),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: neuralLight),
            borderRadius: BorderRadius.all(Radius.circular(5.00)),
          )));
}
