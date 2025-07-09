
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WidgetOneController extends GetxController{
  final ScrollController scrollController = ScrollController();
  RxBool isBlink = false.obs;
  Timer? timer;
  double ScrollPosition=0;

  void blinkFun(){
   Timer.periodic(Duration(milliseconds: 500), (timer) {
     isBlink.value = !isBlink.value;
   },);
  }

  void autoScroll(){
    timer=Timer.periodic(Duration(milliseconds: 100), (timer) {
      if(scrollController.hasClients){
        ScrollPosition+=3;
        if(scrollController.position.maxScrollExtent<=ScrollPosition){
          ScrollPosition=0;
        }
        scrollController.animateTo(ScrollPosition,duration: Duration(milliseconds: 100), curve: Curves.linear);
      }
    },);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    blinkFun();
    autoScroll();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    timer?.cancel();
    scrollController.dispose();
    super.dispose();
  }

}