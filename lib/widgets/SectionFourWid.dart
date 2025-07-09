import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/Widget4/WidFourController.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';

class SectionFourWid extends StatelessWidget {
  IconData icon;
  String title, desc;
  int privateNum;
  SectionFourWid({super.key,required this.privateNum, required this.icon, required this.title, required this.desc});
  WidFourController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        transform: Matrix4.translationValues(0, controller.isHover.value&&(controller.privateKey.value==privateNum)?-10:0, 0),
        duration: Duration(milliseconds: 300),
        child: GlowingContainer(
          isAnimate: false,
          child: InkWell(
            onTap: () {
              controller.Hover(!controller.isHover.value,privateNum);
            },
            onHover: (value) {
              controller.Hover(value,privateNum);
            },
            child: SizedBox(
              height: 300,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FaIcon(
                      icon,
                      size: 20,
                      color: controller.isHover.value&&(controller.privateKey.value==privateNum)?colors.green:Colors.grey,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MyText(
                      text: title,
                      fontSize: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyText(
                      text: desc,
                      fontSize: 15,
                      letterSpacing: 1.5,
                      color: Colors.grey,
                      isBold: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
