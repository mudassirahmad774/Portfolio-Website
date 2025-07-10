import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/HeaderController.dart';
import 'package:portfolio/screens/home/Drawer/DesktopDrawer.dart';
import 'package:portfolio/screens/home/Drawer/PhoneDrawer.dart';
import 'package:portfolio/screens/home/Header/header.dart';
import 'package:portfolio/screens/home/Widget1/WidgetOne.dart';
import 'package:portfolio/screens/home/Widget2/WidgetTwo.dart';
import 'package:portfolio/screens/home/Widget3/WidgetThree.dart';
import 'package:portfolio/screens/home/Widget4/WidgetFour.dart';
import 'package:portfolio/screens/home/Widget5/WidgetFive.dart';
import 'package:portfolio/screens/home/Widget6/WidgetSix.dart';
import 'package:portfolio/screens/home/Widget7/WidgetSeven.dart';
import 'package:portfolio/screens/home/Widget8/WidgetEight.dart';
import 'package:portfolio/screens/home/Widget9/WidgetNine.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
HeaderController headerController = Get.find();
late ScrollController _scrollController;


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: colors.getBgColor(),
        width: utils.TabletMode(context) ? 350 : 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: utils.desktopMode(context)
              ? DesktopDrawer(
                  scaffoldKey: _scaffoldKey,
                )
              : PhoneDrawer(scaffoldKey: _scaffoldKey),
        ),
      ),
      backgroundColor: colors.getBgColor(),
      body: Stack(
        children: [
          ///Background Numbed Image
          Image.asset("assets/images/hero-bg-dark.png"),

          ///Main Column
          WebSmoothScroll(
            controller: _scrollController,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: utils.getScreenHeight(context) * 0.06),

                  ///Header
                  MyHeader(
                    switchTheme: () {
                      setState(() {
                        utils.isDarkTheme = !utils.isDarkTheme;
                      });
                    },
                    scaffoldKey: _scaffoldKey,
                  ),

                  ///Body Start
                  SizedBox(
                    width: utils.GlobalWidth(context),
                    child: Column(
                      children: [
                        ///Widget1
                        SizedBox(height: 15),
                        WidgetOne(),

                        ///Widget 2
                        SizedBox(height: 15),
                        WidgetTwo(),

                        ///Widget 3
                        SizedBox(height: 15),
                        WidgetThree(),

                        ///Widget 4
                        SizedBox(height: 15),
                        WidgetFour(),

                        ///Widget 5
                        SizedBox(height: 15),
                        WidgetFive(),

                        ///Widget 6
                        SizedBox(height: 15),
                      //  WidgetSix(),

                        ///Widget 7
                        SizedBox(height: 15),
                        WidgetSeven(),

                        ///Widget 8
                        SizedBox(height: 15),
                       // WidgetEight(),

                        ///Widget 9
                        SizedBox(height: 50),
                        WidgetNine(),

                        ///Bottom
                        SizedBox(height: 100,),
                        Divider(height: 1,color: Colors.white,),
                        SizedBox(height: 30F),
                        Text("Mudassir Ahmad",style: TextStyle(color: Colors.green,letterSpacing: 2,fontWeight: FontWeight.bold),),
                        // Image.asset("assets/logos/final-logo.png",height: 40,),
                        SizedBox(height: 15),
                        RichText(
                          textAlign: TextAlign.center,
                            text: TextSpan(
                          children: [
                            TextSpan(text: "© 2025 All Rights Reserved by ",style: TextStyle(color: colors.getTextColor(),letterSpacing: 2)),
                            TextSpan(text: "Mudassir Ahmad",style: TextStyle(color: Colors.green,letterSpacing: 2,fontWeight: FontWeight.bold),),
                          ]
                        )),
                        SizedBox(height: 60,),
                        ///End
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
  }
}






