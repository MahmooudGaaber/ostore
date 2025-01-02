// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class OstoreColors {
  OstoreColors._();
  //base colors
  static const Color primaryColor = Color(0xFF4868FF);
  static const Color secondaryColor = Color(0xFFFFE24B);
  static const Color accentColor = Color(0xFFb0c7ff);

  //text colors
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF6c757D);
  static const Color textWhite = Colors.white;

  //background colors
  static const Color lightColor = Color(0xFFF6F6F6);
  static const Color darkColor = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //container colors
  static const Color lightContainerColor = Color(0xFFF6F6F6);
  static Color darkContainerColor = Colors.white.withOpacity(0.1);

  //button colors
  static const Color buttonPrimaryColor = Color(0xFF4b68ff);
  static const Color buttonSecondaryColor = Color(0xFF6c757D);
  static const Color buttonDisabledColor = Color(0xFFC4C4C4);

  //border colors
  static const Color borderPrimaryColor = Color(0xFFD9D9D9);
  static const Color borderSecondaryColor = Color(0xFFE6E6E6);

  //error colors
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color succesColor = Color(0xFF388E3C);
  static const Color infoColor = Color(0xFFF57C00);
  static const Color warningColor = Color(0xFF1976D2);

  //neutral colors
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

  static const Color transparent = Colors.transparent;

  //gradient colors
  static const LinearGradient linearGradient = LinearGradient(
    colors: [
      Color(0xFFFF9a9e),
      Color(0xFFFad0c4),
      Color(0xFFFad0c4),
    ],
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
  );
}
