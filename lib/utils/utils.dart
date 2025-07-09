
import 'package:flutter/cupertino.dart';

class utils{

  static const String appName = "Website-Portfolio";
  static const String phone = "+92-3359902693";
  static const String email = "mudassirahmad774@gmail.com";
  static const String website = "-";
  static bool isDarkTheme = true;


  ///Functions
  static double getScreenHeight(BuildContext context) => MediaQuery.sizeOf(context).height;
  static double getScreenWidth(BuildContext context) => MediaQuery.sizeOf(context).width;
  static bool desktopMode(BuildContext context) => getScreenWidth(context) > 1150;
  static bool TabletMode(BuildContext context) => getScreenWidth(context) > 668;
  static bool MobileMode(BuildContext context) => getScreenWidth(context) < 668;
  static double GlobalWidth(BuildContext context) => getScreenWidth(context)*0.9;

}