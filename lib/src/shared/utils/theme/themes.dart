import 'package:flutter/material.dart';
import 'package:guru_shop/gen/fonts.gen.dart';
import 'package:guru_shop/src/shared/utils/common.dart';
import 'package:guru_shop/src/shared/utils/theme/colors.dart';

ThemeData lightThemeCustom() {
  return ThemeData.light().copyWith(
      primaryColor: primaryBlue,
      colorScheme: const ColorScheme.light(
          primary: primaryBlue,
          secondary: neuralGrey,
          surface: whiteColor,
          background: whiteColor,
          error: primaryRed),
      appBarTheme: const AppBarTheme(
          backgroundColor: whiteColor,
          toolbarHeight: 80,
          elevation: 1,
          actionsIconTheme: IconThemeData(color: neuralGrey)),
      textTheme: textTheme(neuralGrey),
      textSelectionTheme: const TextSelectionThemeData(cursorColor: neuralGrey),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(primaryBlue),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(color: whiteColor)))),
      inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
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
