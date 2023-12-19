import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          Get.defaultDialog(
            title: "Dailog Title",
            titleStyle: TextStyle(
              fontSize: 25,
            )
          );
        }, child: Text('Show Dailog'));
  }
}
