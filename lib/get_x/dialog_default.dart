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
            titleStyle:const TextStyle(
              fontSize: 25,
            ),
            middleText: "This is middle Text",
            middleTextStyle:const TextStyle(fontSize: 20),
            backgroundColor: Colors.grey,
            radius: 10,

            //To customize the middle Text

            content:const Row(
              children: [
                CircularProgressIndicator(),
                SizedBox(
                  width: 16,
                ),
                Expanded(child: Text('Data Loading'),
                ),
              ],
            ),

            //Default Cancel and Confirm Action
            textCancel: "Cancel",
            cancelTextColor: Colors.white,
            textConfirm: "Confirm",
            confirmTextColor: Colors.white,
            onCancel: (){},
            onConfirm: (){},
            //Color for Default Cancel and Confirm button
            buttonColor: Colors.green,

            //Customize the default cancel and Confirm
            //Override the default cancel and confirm
            cancel: Text('Close',
            style: TextStyle(color: Colors.white),),
            confirm: Text('save',
            style: TextStyle(color: Colors.white),),
            actions: [
              ElevatedButton(onPressed: (){}, child: Text('Action One')),
              ElevatedButton(onPressed: (){}, child: Text('Action Two')),
            ],
            barrierDismissible: false,

          );
        }, child: const Text('Show Dailog'));
  }
}
