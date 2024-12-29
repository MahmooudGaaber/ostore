import 'package:flutter/material.dart';
import 'package:ostore/util/theme/custom_theme/chechbox_theme.dart';
import 'package:ostore/util/theme/custom_theme/text_field_theme.dart';
import 'package:ostore/util/theme/custom_theme/text_theme.dart';
import 'package:ostore/util/theme/custom_theme/elevated_button_theme.dart';
import 'package:ostore/util/theme/custom_theme/app_bar_theme.dart';
import 'package:ostore/util/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ostore/util/theme/custom_theme/chip_theme.dart';
import 'package:ostore/util/theme/custom_theme/outlined_button_theme.dart';

class OstoreAppTheme {
  OstoreAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: OstoreTextTheme.lightTextTheme,
    elevatedButtonTheme: OstoreElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: OstoreAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: OstoreBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: OstoreCheckboxTheme.lightCheckboxTheme,
    chipTheme: OstoreChipTheme.lightChipTheme,
    outlinedButtonTheme: OstoreOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: OstoreTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: OstoreTextTheme.darkTextTheme,
    elevatedButtonTheme: OstoreElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: OstoreAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: OstoreBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: OstoreCheckboxTheme.darkCheckboxTheme,
    chipTheme: OstoreChipTheme.darkChipTheme,
    outlinedButtonTheme: OstoreOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: OstoreTextFieldTheme.darkInputDecorationTheme,
  );
}
