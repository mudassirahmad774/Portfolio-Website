import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/controllers/Home/Widget8/WidgetEightController.dart';
import 'package:portfolio/utils/utils.dart';

import 'MyText.dart';

class SectionEightWid extends StatelessWidget {
  String clientName,companyName,Testimonial,imgPath;
  int privateNum;
  SectionEightWid({super.key,required this.clientName,required this.companyName,required this.Testimonial,required this.imgPath,required this.privateNum});
  WidgetEightController widgetEightController = Get.find();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      onTap: () {
        widgetEightController.isHover.value = !widgetEightController.isHover.value;
        widgetEightController.privateNum.value = privateNum;
      },
      onHover: (value) {
        widgetEightController.isHover.value = value;
        widgetEightController.privateNum.value = privateNum;
      },
      child: Obx(
            () => Container(
          width: utils.MobileMode(context)?330:350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border(
                top: BorderSide(width: 2,color: widgetEightController.isHover.value&&widgetEightController.privateNum.value==privateNum?Colors.green:Colors.grey),
                right: BorderSide(width: 2,color: widgetEightController.isHover.value&&widgetEightController.privateNum.value==privateNum?Colors.green:Colors.grey),
                left: BorderSide(width: 2,color: widgetEightController.isHover.value&&widgetEightController.privateNum.value==privateNum?Colors.green:Colors.grey),
              )
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 15,),
                      Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 15,),
                      Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 15,),
                      Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 15,),
                      Icon(FontAwesomeIcons.solidStar,color: Colors.green,size: 15,),
                    ],
                  ),
                  Icon(FontAwesomeIcons.quoteRight,color: widgetEightController.isHover.value&&widgetEightController.privateNum.value==privateNum?Colors.green:Colors.grey,size: 50,)
                ],
              ),
              SizedBox(height: 5,),
              MyText(text: "\"\"",letterSpacing: 2,fontSize: 40,isItalic: true,),
              MyText(text: Testimonial,isBold: false,fontSize: 16,),
              SizedBox(height: 5,),
              MyText(text: "\"\"",letterSpacing: 2,fontSize: 40,isItalic: true,),
              SizedBox(height: 20,),
              Row(
                children: [
                  Image.asset(imgPath,height: 70,width: 70,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(text: clientName,fontSize: 20,),
                      MyText(text: companyName,fontSize: 15,isBold: false,),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
