import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/get_x/dialog_default.dart';
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
        appBar: AppBar(title: Text('SnackBar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Snack bar
              // MySnack()
              MyDialog()
            ],
          ),
        ),
      ),
    );
  }
}

