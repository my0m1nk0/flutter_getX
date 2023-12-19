import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/get_x/bottom_sheet.dart';

class MyRoute extends StatefulWidget {
  const MyRoute({super.key});

  @override
  State<MyRoute> createState() => _MyRouteState();
}

class _MyRouteState extends State<MyRoute> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Get.to(
      const  MyBottomSheet(),
        fullscreenDialog: true,
        //provide the animaiton
        transition: Transition.zoom,
        duration: Duration(microseconds: 4000),
        curve: Curves.bounceInOut,
      );
      /**
       * Get.off(Home());
       * Get.to(Home(),arguments:Data From Main");//Main
       * {Get.argument}//home
       *
       * Go to next screen and receive data sent from home screen
       * var data = await Get.to(Home());//Main page
       * print("the receive data is $data");//Main Page
       * Get.back(result:"this is from home screen");//Home page
       * **/
    }, child: const Text('Go to Change Theme'));
  }
}
