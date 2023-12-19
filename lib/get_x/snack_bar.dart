import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySnack extends StatefulWidget {
  const MySnack({super.key});

  @override
  State<MySnack> createState() => _MySnackState();
}

class _MySnackState extends State<MySnack> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Get.snackbar(
          "Snackbar Title",
          "What are you doing ",
          snackPosition: SnackPosition.BOTTOM,
          // titleText: Text('Another Title'),
          // messageText: Text(
          //   'Another Message',
          //   style: TextStyle(color: Colors.white),
          // )
          colorText: Colors.white,
          backgroundColor: Colors.black,
          borderRadius: 20,
          margin: EdgeInsets.all(10),
          // maxWidth: 100,
          animationDuration: Duration(microseconds: 3000),
          backgroundGradient: LinearGradient(colors: [Colors.red,Colors.green]),

          //While using boarder Color ensure you are using border Width
          borderColor: Colors.green.shade50,
          borderWidth: 2,
          boxShadows: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(5,5),
              spreadRadius: 2.0,
              blurRadius: 10,
            ),

          ],
          // isDismissible: true,
          //   dismissDirection: DismissDirection.horizontal,
          forwardAnimationCurve: Curves.bounceInOut,
          // duration: Duration(microseconds: 8000),
          icon: Icon(
            Icons.send,
            color: Colors.white,
          ),
          shouldIconPulse: false,
          leftBarIndicatorColor: Colors.white,//Indicator
          mainButton: TextButton(
            onPressed: (){},
            child: Text('Retry',
              style: TextStyle(

                  color: Colors.red
              ),),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Colors.black26,
                )
            ),
          ),
          onTap: (val){
            print('Snack Bar Click');
          },
          overlayBlur: 5,
          overlayColor: Colors.grey,
          padding: EdgeInsets.all(50),
          showProgressIndicator: true,
          progressIndicatorBackgroundColor: Colors.deepOrange,
          progressIndicatorValueColor:
          AlwaysStoppedAnimation<Color>(Colors.white),
          reverseAnimationCurve: Curves.bounceInOut,
          snackbarStatus: (val){
            print(val);//OPening and Closing
          },

          userInputForm: Form(
            child: Row(
              children: [
                Expanded(child: TextField())
              ],
            ),
          )




      );
    }, child: Text('Show SnackBar'));

  }
}
