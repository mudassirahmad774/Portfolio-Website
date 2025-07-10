import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/Home/Widget4/WidFourController.dart';
import 'package:portfolio/widgets/GlowingContainer.dart';
import 'package:portfolio/widgets/MyText.dart';

class SectionFourWid extends StatelessWidget {
  final String? imagePath;
  final String title, desc;
  final int privateNum;

  SectionFourWid({
    super.key,
    required this.privateNum,
    this.imagePath,
    required this.title,
    required this.desc,
  });

  final WidFourController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => AnimatedContainer(
        transform: Matrix4.translationValues(
          0,
          controller.isHover.value && (controller.privateKey.value == privateNum) ? -10 : 0,
          0,
        ),
        duration: const Duration(milliseconds: 300),
        child: GlowingContainer(
          isAnimate: false,
          child: InkWell(
            onTap: () {
              controller.Hover(!controller.isHover.value, privateNum);
            },
            onHover: (value) {
              controller.Hover(value, privateNum);
            },
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (imagePath != null)
                      Image.asset(
                        imagePath!,
                        scale: 2,
                      ),
                    const SizedBox(height: 20),
                    MyText(
                      text: title,
                      fontSize: 20,
                    ),
                    const SizedBox(height: 10),
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
