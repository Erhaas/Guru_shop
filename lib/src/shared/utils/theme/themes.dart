import 'package:flutter/material.dart';
import 'package:guru_shop/gen/fonts.gen.dart';
import 'package:guru_shop/src/shared/utils/common.dart';
import 'package:guru_shop/src/shared/utils/theme/colors.dart';

import '../constant.dart';

ThemeData lightThemeCustom() {
  return ThemeData.light().copyWith(
      primaryColor: primaryBlue,
      scaffoldBackgroundColor: whiteColor,
      colorScheme: const ColorScheme.light(
          primary: primaryBlue,
          secondary: neuralGrey,
          surface: whiteColor,
          background: whiteColor,
          secondaryContainer: neuralLight,
          error: primaryRed,
          tertiary: primaryYellow),
      appBarTheme: const AppBarTheme(
          backgroundColor: whiteColor,
          iconTheme: IconThemeData(color: neuralDark),
          toolbarHeight: 80,
          elevation: 1,
          actionsIconTheme: IconThemeData(color: neuralGrey)),
      textTheme: textTheme(neuralDark),
      textSelectionTheme: const TextSelectionThemeData(cursorColor: neuralGrey),
      iconTheme: const IconThemeData(color: neuralGrey),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(primaryBlue),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(color: whiteColor)))),
      inputDecorationTheme: InputDecorationTheme(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
          fillColor: whiteColor,
          prefixIconColor: neuralGrey,
          suffixIconColor: neuralGrey,
          helperStyle: const TextStyle(
              fontSize: 15,
              color: neuralGrey,
              fontFamily: FontFamily.poppins,
              fontWeight: FontWeight.w200),
          hintStyle: const TextStyle(
              fontSize: 12,
              color: neuralGrey,
              fontFamily: FontFamily.poppins,
              fontWeight: FontWeight.normal),
          labelStyle: const TextStyle(
              fontSize: 15, color: neuralGrey, fontWeight: FontWeight.w300),
          errorStyle:
              const TextStyle(color: primaryRed, fontWeight: FontWeight.normal),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.5, color: primaryRed),
            borderRadius:
                BorderRadius.all(Radius.circular(Constants.radiusMedium)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.5, color: primaryBlue),
            borderRadius:
                BorderRadius.all(Radius.circular(Constants.radiusMedium)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.5, color: primaryRed),
            borderRadius:
                BorderRadius.all(Radius.circular(Constants.radiusMedium)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1.5, color: neuralLight),
            borderRadius:
                BorderRadius.all(Radius.circular(Constants.radiusMedium)),
          )));
}
