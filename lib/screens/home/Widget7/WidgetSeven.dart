import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/controllers/Home/Widget7/WidgetSevenController.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';
import 'package:portfolio/widgets/SectionSevenWid.dart';

class WidgetSeven extends StatelessWidget {
  WidgetSeven({super.key});
  WidgetSevenController widgetSevenController=Get.find();
  @override
  Widget build(BuildContext context) {
    return GlowingContainer(
      conatinerH: utils.desktopMode(context)?500:800,
      isAnimate: false,
      child: SizedBox(
        width: utils.GlobalWidth(context),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: MyText(
                text: 'Skills',
                color: Colors.green,
                letterSpacing: 1.5,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: MyText(
                text: 'My Skills',
                letterSpacing: 2,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: utils.desktopMode(context)?Row(
                children: [
                  getWid7(widgetSevenController,context)[0],
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: VerticalDivider(color: Colors.grey,),
                  ),
                  getWid7(widgetSevenController,context)[1],
                ],
              ):Column(
                children: [
                  getWid7(widgetSevenController,context)[0],
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(color: Colors.grey,height: 1,),
                  ),
                  getWid7(widgetSevenController,context)[1],
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  List<Widget> getWid7(WidgetSevenController widgetSevenController,BuildContext context){
    List<Widget> skillswid = [
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 80,
              child: ListView.builder(
                controller: widgetSevenController.scrollController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: GlowingContainer(
                      isAnimate: false,
                      conatinerW: 80,
                      conatinerH: 80,
                      child:  Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/images/fiverr.png"),
                      ),
                    ),
                  );
                },
                itemCount: 100,
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                controller: widgetSevenController.scrollController2,
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: GlowingContainer(
                      isAnimate: false,
                      conatinerW: 80,
                      conatinerH: 80,
                      child:  Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/images/fiverr.png"),
                      ),
                    ),
                  );
                },
                itemCount: 100,
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: utils.desktopMode(context)?40:0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Sectionsevenwid(title: "Frameworks & Languages",detail: "Slack and Jira and code Host on GitHub",),
              Sectionsevenwid(title: "DEVELOPMENT TOOLS ",detail: "AndroidStudio ‑ VSCode ‑ Cursor",),
              Sectionsevenwid(title: "Architecture",detail: "MVC,MVVM Architecture and State Management – Provider and Riverpod",),
              Sectionsevenwid(title: "Miscellaneous",detail: " Window,LATEXOverleaf, Microsoft Office, Git‑GitHub",),
              Sectionsevenwid(title: "SoftSkills ",detail: "TimeManagement,Teamwork,Problem‑solving,Documentation,EngagingPresentation.",),
            ],
          ),
        ),
      )
    ];
    return skillswid;
  }
}
