import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          Get.bottomSheet(
             Wrap(
               children: [
                 ListTile(
                   leading:const Icon(Icons.wb_sunny_outlined),
                   title:const Text('Light Theme'),
                   onTap: ()=>{
                     Get.changeTheme(ThemeData.light())
                   },
                 ),
                 ListTile(
                   leading: const Icon(Icons.wb_sunny),
                   title: const Text('Dark Theme'),
                   onTap: ()=>{
                     Get.changeTheme(
                       ThemeData.dark()
                     )
                   },
                 ),
               ],
             ),
            // barrierColor: Colors.greenAccent,
            backgroundColor: Colors.purpleAccent,
            // isDismissible: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side:const BorderSide(
                color: Colors.blueGrey,
                style: BorderStyle.solid,
                width: 1.0,
              ),
            ),
            enableDrag: true,
          );
        },
        child: const Text('Show Bottom Sheet'));
  }
}
