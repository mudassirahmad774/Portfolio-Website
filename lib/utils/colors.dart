import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class colors{
  static const Color bgDark = Color(0xFF1F1F24);
  static const Color bgLight = Color(0xFFE8E8E8);
  static const Color headerLight = Color(0xFF333A32);
  static const Color headerDark = Color(0xFF272730);
  static const Color bgContainerDark = Color(0xFF272730);
  static const Color bgContainerLight = Color(0xFFFFFFFF);
  static const Color menuSideDark = Color(0xFF32323B);
  static const Color menuSideLight = Color(0xFF3D443C);
  static const Color textDark = Color(0xFFE8E8E8);
  static const Color textLight = Color(0xFF1F1F24);
  static const Color green = Color(0xFF62A92B);
  static const Color subtitleOnBlack = Color(0xFFCCCCCC);
  static const Color subtitleOnWhite = Color(0xFF444444);
  static const Color borderOnWhite = Colors.lightGreen;
  static const Color borderOnblack = Color(0xFFFFFFFF);
  static const Color lowlightGreen = Color(0XFF3B413D);

  ///Functions
  static Color getBgColor() => utils.isDarkTheme?bgDark:bgLight;
  static Color getheaderColor() => utils.isDarkTheme?headerDark:headerLight;
  static Color getConatinerColor() => utils.isDarkTheme?bgContainerDark:bgContainerLight;
  static Color getMenuSideColor() => utils.isDarkTheme?menuSideDark:menuSideLight;
  static Color getTextColor() => utils.isDarkTheme?textDark:textLight;
  static Color getIconColor() => utils.isDarkTheme?textDark:textLight;
  static Color getSubtitleColor() => utils.isDarkTheme?subtitleOnBlack:subtitleOnWhite;
  static Color getBorderColor() => utils.isDarkTheme?borderOnblack:borderOnWhite;


}