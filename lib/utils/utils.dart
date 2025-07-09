
import 'package:flutter/cupertino.dart';

class utils{

  static const String appName = "Portfolio";
  static const String phone = "+92-339-7807000";
  static const String email = "itsdevzam@gmail.com";
  static const String website = "https://devzam.com";
  static bool isDarkTheme = true;


  ///Functions
  static double getScreenHeight(BuildContext context) => MediaQuery.sizeOf(context).height;
  static double getScreenWidth(BuildContext context) => MediaQuery.sizeOf(context).width;
  static bool desktopMode(BuildContext context) => getScreenWidth(context) > 1150;
  static bool TabletMode(BuildContext context) => getScreenWidth(context) > 668;
  static bool MobileMode(BuildContext context) => getScreenWidth(context) < 668;
  static double GlobalWidth(BuildContext context) => getScreenWidth(context)*0.9;

}