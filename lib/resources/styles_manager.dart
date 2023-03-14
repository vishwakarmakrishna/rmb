import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  String fontFamily,
  FontWeight fontWeight,
  Color color, {
  double? letterSpacing,
  double? wordSpacing,
  double? height,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    letterSpacing: letterSpacing,
    wordSpacing: wordSpacing,
    height: height,
    fontWeight: fontWeight,
  );
}

// regular style

TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  required Color color,
  double? letterSpacing,
  double? wordSpacing,
  double? height,
}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color,
      letterSpacing: letterSpacing, wordSpacing: wordSpacing, height: height);
}
// light text style

TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
  double? letterSpacing,
  double? wordSpacing,
  double? height,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.light,
    color,
    letterSpacing: letterSpacing,
    wordSpacing: wordSpacing,
    height: height,
  );
}
// bold text style

TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  double? letterSpacing,
  double? wordSpacing,
  double? height,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.bold,
    color,
    letterSpacing: letterSpacing,
    wordSpacing: wordSpacing,
    height: height,
  );
}

// semi bold text style

TextStyle getSemiBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
  double? letterSpacing,
  double? wordSpacing,
  double? height,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.semiBold,
    color,
    letterSpacing: letterSpacing,
    wordSpacing: wordSpacing,
    height: height,
  );
}

// medium text style

TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  required Color color,
  double? letterSpacing,
  double? wordSpacing,
  double? height,
}) {
  return _getTextStyle(
    fontSize,
    FontConstants.fontFamily,
    FontWeightManager.medium,
    color,
    letterSpacing: letterSpacing,
    wordSpacing: wordSpacing,
    height: height,
  );
}
