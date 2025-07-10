import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/controllers/Home/HeaderController.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/HeaderButton.dart';
import 'package:portfolio/widgets/SocialButton.dart';

class MyHeader extends StatelessWidget {
  VoidCallback switchTheme;
  GlobalKey<ScaffoldState> scaffoldKey;
  MyHeader({super.key, required this.switchTheme, required this.scaffoldKey});
  HeaderController headerController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colors.getheaderColor(),
        ),
        height: 100,
        width: utils.GlobalWidth(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ///Left Menu Conatiner
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    color: colors.getMenuSideColor(),
                  ),
                  height: double.maxFinite,
                  width: utils.desktopMode(context)
                      ? utils.getScreenWidth(context) * 0.06
                      : 70,
                  child: IconButton(
                    style: ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    icon: FaIcon(FontAwesomeIcons.bars),
                    color: Colors.white,
                    padding: EdgeInsets.all(0),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text("Mudassir Ahmad",style: TextStyle(color: Colors.green,letterSpacing: 2,fontWeight: FontWeight.bold),),

                ///Main Logo
                // Image.asset(
                //   "assets/logos/final-logo.png",
                //   height: double.maxFinite,
                //   width: utils.TabletMode(context) ? 150 : 120,
                // ),
              ],
            ),

            ///Nav Buttons
            utils.desktopMode(context)
                ? Obx(
                    () => Row(
                      children: [
                        HeaderButton(
                          text: "Home",
                          onPressed: () {
                            headerController.setSelectedIndex(0);
                          },
                          isSelected: headerController.selectedIndex.value == 0,
                        ),
                        HeaderButton(
                          text: "1Services",
                          onPressed: () {
                            headerController.setSelectedIndex(1);
                          },
                          isSelected: headerController.selectedIndex.value == 1,
                        ),
                        HeaderButton(
                          text: "Projects",
                          onPressed: () {
                            headerController.setSelectedIndex(2);
                          },
                          isSelected: headerController.selectedIndex.value == 2,
                        ),
                        HeaderButton(
                          text: "Pricing",
                          onPressed: () {
                            headerController.setSelectedIndex(3);
                          },
                          isSelected: headerController.selectedIndex.value == 3,
                        ),
                        HeaderButton(
                          text: "Contact",
                          onPressed: () {
                            headerController.setSelectedIndex(4);
                          },
                          isSelected: headerController.selectedIndex.value == 4,
                        ),
                      ],
                    ),
                  )
                : SizedBox(),

            ///Social Buttons
            Row(
              children: [
                utils.TabletMode(context) ? SocialButton() : SizedBox(),
                SizedBox(
                  width: 15,
                ),

                ///Right Menu Container
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: colors.getMenuSideColor(),
                  ),
                  height: double.maxFinite,
                  width: utils.desktopMode(context)
                      ? utils.getScreenWidth(context) * 0.06
                      : 70,
                  child: IconButton(
                    style: ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: WidgetStateProperty.all(Colors.transparent),
                    ),
                    onPressed: switchTheme,
                    icon: utils.isDarkTheme
                        ? FaIcon(FontAwesomeIcons.solidSun)
                        : FaIcon(FontAwesomeIcons.solidMoon),
                    color: utils.isDarkTheme ? Colors.yellow : Colors.white,
                    padding: EdgeInsets.all(0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
