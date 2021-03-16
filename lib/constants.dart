import 'package:flutter/material.dart';

class Constants {
  static final Color primaryColor = Colors.orangeAccent;
  static final Color primaryLightColor = Colors.orangeAccent.shade100;
  static final Color accentColor = Colors.white;
  static final Color lightColor = Colors.white;
  static final Color darkColor = Colors.grey[900];
  static final Color lightGreyColor = Colors.grey[400];
  static final Color secondaryColor = Colors.orange;

  static final double defaultMargin = 12;
  static final double defaultPadding = 12;
  static final double smallPadding = 6;
  static final double bigPadding = 18;
  static final double defaultRadius = 12;
  static final double smallRadius = 8;
  static final double bigRadius = 24;

  static final TextStyle titleStyle =
      TextStyle(color: lightColor, fontSize: 24, fontWeight: FontWeight.bold);
  static final TextStyle dropDownLabelStyle =
      TextStyle(color: lightColor, fontSize: 16);
  static final TextStyle dropDownMenuItemStyle =
      TextStyle(color: darkColor, fontSize: 18);
}
