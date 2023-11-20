import 'package:flutter/material.dart';
import '/utils/helpers/app_extension.dart';

class AppColors {
// Basic colors
  static const Color primaryColor = Colors.blue;
  static final Color secondaryColor =
      getComplementaryColor(primaryColor, index: 4);
  static final Color accentColor =
      getComplementaryColor(primaryColor, index: 3);
  static final Color accentColor2 =
      getComplementaryColor(primaryColor, index: 2);

  //orther colors
  // Lightened variants of the primary color
  static final Color primaryLight05 = lighten(primaryColor, 0.05);

  // Darken variants of the primary color
  static final Color primaryColorDark05 = darken(primaryColor, 0.05);

  //for custom colors
  static final Color whiteColor = fromHex("#ffffff"); // Blanc
  static final Color blackColor = fromHex("#000000"); // Noir
  static final Color redColor = fromHex("#000000"); // Noir
  static final Color redLabelColors = fromHex("#F16063");
  static final Color warningColor = fromHex("#f2ad27");
  static final Color lightGreyColor = fromHex("#f1f7ff");
  static final Color greyColor = fromHex("#b2bac6");
}

Color darken(Color color, double amount) {
  //amount is always between 0 and 1
  assert(amount >= 0 && amount <= 1, 'Amount should be between 0 and 1');
  int r = color.red;
  int g = color.green;
  int b = color.blue;

  double decrease = 1 - amount;

  r = (r * decrease).round().clamp(0, 255);
  g = (g * decrease).round().clamp(0, 255);
  b = (b * decrease).round().clamp(0, 255);

  return Color.fromRGBO(r, g, b, 1);
}

Color lighten(Color color, double amount) {
  //amount is always between 0 and 1
  assert(amount >= 0 && amount <= 1, 'Amount should be between 0 and 1');

  int r = color.red;
  int g = color.green;
  int b = color.blue;

  double increase = 1 + amount;

  r = (r * increase).round().clamp(0, 255);
  g = (g * increase).round().clamp(0, 255);
  b = (b * increase).round().clamp(0, 255);

  return Color.fromRGBO(r, g, b, 1);
}

Color getComplementaryColor(Color color, {int? index}) {
  HSLColor hslColor = HSLColor.fromColor(color);
  HSLColor complementary;
  if (index != null) {
    complementary = hslColor.withHue((hslColor.hue + index * 30.0) % 360.0);
  } else {
    complementary = hslColor.withHue((hslColor.hue + 180.0) % 360.0);
  }

  return complementary.toColor();
}
