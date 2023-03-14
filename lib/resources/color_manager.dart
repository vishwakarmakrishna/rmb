import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#3747B0");
  static Color grey = HexColor.fromHex("#8F8F8F");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color lightYellow = HexColor.fromHex("#FFF503");
  static Color navyBlue = HexColor.fromHex("#192834");
  static Color blue = HexColor.fromHex("#3747B0");
  static Color lightNavyBlue = HexColor.fromHex("#2E5E6D");
  static Color lightBlueGrey = HexColor.fromHex("#ECEEFD");
  static Color lightGreen = HexColor.fromHex("#00FF48");
  static Color primaryOpacity70 = HexColor.fromHex("#ECEEFD");

  // new colors
  static Color darkPrimary = HexColor.fromHex("#d17d11");
  static Color grey1 = HexColor.fromHex("#707070");
  static Color grey2 = HexColor.fromHex("#797979");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34");
  static Color black = HexColor.fromHex("#1C1B1F");
  static Color transparent = Colors.transparent;
  static Color red = HexColor.fromHex("#F05C3C");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
