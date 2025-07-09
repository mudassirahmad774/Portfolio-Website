
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WidgetSevenController extends GetxController{
  final ScrollController scrollController = ScrollController();
  final ScrollController scrollController2 = ScrollController();
  Timer? timer;
  double ScrollPosition1=0;
  double ScrollPosition2=0;
  void autoScroll1(){
    timer=Timer.periodic(Duration(milliseconds: 100), (timer) {
      if(scrollController.hasClients){
        ScrollPosition1+=3;
        if(scrollController.position.maxScrollExtent<=ScrollPosition1){
          ScrollPosition1=0;
        }
        scrollController.animateTo(ScrollPosition1,duration: Duration(milliseconds: 100), curve: Curves.linear);
      }
    },);
  }
  void autoScroll2(){
    timer=Timer.periodic(Duration(milliseconds: 100), (timer) {
      if(scrollController2.hasClients){
        ScrollPosition2+=3;
        if(scrollController2.position.maxScrollExtent<=ScrollPosition2){
          ScrollPosition2=0;
        }
        scrollController2.animateTo(ScrollPosition2,duration: Duration(milliseconds: 100), curve: Curves.linear);
      }
    },);
  }
  @override
  void onInit() {
    super.onInit();
    autoScroll1();
    autoScroll2();
  }
  @override
  void dispose() {
    timer?.cancel();
    scrollController.dispose();
    super.dispose();

  }
}