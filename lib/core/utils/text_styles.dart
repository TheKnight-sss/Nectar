import 'package:flutter/material.dart';
import 'package:necture_ui/core/utils/appcolor.dart';

class TextStyles {
  static TextStyle titleStyle({
    Color? color,
    double fontSize = 24,
    FontWeight fontweight = FontWeight.bold,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontweight,
      color: color ?? Appcolor.darkColor,
    );
  }

  static TextStyle smallStyle({
    Color? color,
    double fontSize = 14,
    FontWeight fontweight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontweight,
      color: color ?? Appcolor.darkColor,
    );
  }

  static TextStyle bodyStyle({
    Color? color,
    double fontSize = 16,
    FontWeight fontweight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontweight,
      color: color ?? Appcolor.darkColor,
    );
  }
}


