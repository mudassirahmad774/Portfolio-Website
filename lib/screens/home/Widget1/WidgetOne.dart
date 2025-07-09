import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/controllers/Home/Widget1/WidgetOneController.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';
import 'package:url_launcher/url_launcher_string.dart';

class WidgetOne extends StatelessWidget {
  WidgetOne({super.key});

  WidgetOneController widgetOneController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GlowingContainer(
      isAnimate: true,
      conatinerH: utils.desktopMode(context) ? 600 : 1000,
      speed: Duration(seconds: 7),
      glowLength: 150,
      conatinerW: utils.GlobalWidth(context),
      child: utils.desktopMode(context)
          ? Row(
              children: [
                WidOneWidgets(context)[0],
                WidOneWidgets(context)[1],
              ],
            )
          : Column(
              children: [
                WidOneWidgets(context)[0],
                WidOneWidgets(context)[1],
              ],
            ),
    );
  }

  List<Widget> WidOneWidgets(BuildContext context) {
    List<Widget> widone = [
      Expanded(
        flex: utils.desktopMode(context) ? 5 : 4,
        child: Image.asset(
          "assets/images/Profile .jpg",
          height: 512,
          width: 512,
        ),
      ),
      Expanded(
        flex: utils.desktopMode(context) ? 5 : 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Obx(
              () => RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: " Hi, I am Mudassir Ahmad ",
                      style: TextStyle(
                          color: colors.getTextColor(), fontSize: 18)),
                  widgetOneController.isBlink.value
                      ? TextSpan(
                          text: "| ",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))
                      : TextSpan(
                          text: "  ",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                ]),
              ),
            ),
            Obx(
              () => RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Flutter Full Stack\n",
                      style: TextStyle(
                          color: colors.getTextColor(),
                          fontWeight: FontWeight.bold,
                          fontSize: utils.desktopMode(context) ? 45 : 28,
                          letterSpacing: 2)),
                  TextSpan(
                      text: "{Mobile Apps}\n",
                      style: TextStyle(
                          color: colors.green,
                          fontSize: utils.desktopMode(context) ? 45 : 30,
                          letterSpacing: 2)),
                  TextSpan(
                      text: "developer",
                      style: TextStyle(
                          color: colors.getTextColor(),
                          fontWeight: FontWeight.bold,
                          fontSize: utils.desktopMode(context) ? 45 : 30,
                          letterSpacing: 2)),
                  widgetOneController.isBlink.value
                      ? TextSpan(
                          text: "_ ",
                          style: TextStyle(
                              color: colors.green,
                              fontSize: utils.desktopMode(context) ? 45 : 30,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold))
                      : TextSpan(
                          text: "  ",
                          style: TextStyle(
                              color: colors.getTextColor(),
                              fontSize: utils.desktopMode(context) ? 45 : 30,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold)),
                ]),
              ),
            ),
            SizedBox(
              width: utils.desktopMode(context)
                  ? utils.getScreenWidth(context) / 2
                  : utils.getScreenWidth(context),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        letterSpacing: 2,
                        fontSize: utils.desktopMode(context) ? 18 : 16),
                    children: [
                      TextSpan(
                          text: "With expertise in",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                          text: ", \n",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                          text: "Flutter",
                          style: TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ", ",
                          style: TextStyle(color: colors.getTextColor())),
                      TextSpan(
                          text: " Android Studio",
                          style: TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ", ",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                          text: " and ",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                          text: " Firebase",
                          style: TextStyle(
                              color: Colors.pink, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "... ",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                      TextSpan(
                          text:
                              "\nI deliver mobile and web solutions that are both innovative and robust.",
                          style: TextStyle(
                            color: colors.getTextColor(),
                          )),
                    ]),
              ),
            ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.end,
            //   children: [
            //     SizedBox(
            //       height: 80,
            //       width: utils.desktopMode(context)
            //           ? utils.getScreenWidth(context) / 3
            //           : utils.getScreenWidth(context) / 2,
            //       child: ListView.builder(
            //         controller: widgetOneController.scrollController,
            //         scrollDirection: Axis.horizontal,
            //         itemBuilder: (context, index) {
            //           return Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 20.0),
            //             child: GlowingContainer(
            //               isAnimate: false,
            //               conatinerW: 70,
            //               conatinerH: 70,
            //               child: Padding(
            //                 padding: const EdgeInsets.all(10.0),
            //                 child: Image.asset("assets/images/fiverr.png"),
            //               ),
            //             ),
            //           );
            //         },
            //         itemCount: 100,
            //       ),
            //     ),
            //     MyText(
            //       text: " ...adnd more",
            //       isBold: false,
            //       letterSpacing: 2,
            //     )
            //   ],
            // ),
            InkWell(
              onTap: () async {
                const cvUrl = 'https://drive.google.com/file/d/1vwfsbK11OJSHXo15oy9tsG_ifBJcO2vj/view?usp=drivesdk '; // Replace with your real ID
                if (await canLaunchUrlString(cvUrl)) {
                  await launchUrlString(cvUrl, webOnlyWindowName: '_blank');
                } else {
                  throw 'Could not launch $cvUrl';
                }
              },
              onHover: (value) {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.download,
                    color: Colors.green,
                    size: 18,
                  ),
                  MyText(
                    text: " Download CV",
                    isBold: false,
                    letterSpacing: 2,
                    fontSize: 16,
                  )
                ],
              ),
            ),
          ],
        ),
      )
    ];
    return widone;
  }
}
