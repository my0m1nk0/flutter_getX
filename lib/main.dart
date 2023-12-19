import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/get_x/bottom_sheet.dart';
import 'package:getx_tutorial/get_x/dialog_default.dart';
import 'package:getx_tutorial/get_x/route.dart';
import 'package:getx_tutorial/get_x/snack_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SnackBar',
      home: Scaffold(
        appBar: AppBar(title:const Text('SnackBar'),
        ),
        body:const Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('This is Home Screen'),
              //Snack bar
              // MySnack()
              // MyDialog()
              // MyBottomSheet()
              MyRoute(),

            ],
          ),
        ),
      ),
    );
  }
}

