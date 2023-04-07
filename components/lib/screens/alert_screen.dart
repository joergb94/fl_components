import 'dart:io';

import 'package:components/themes/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  void displaDialog(BuildContext context){
    showDialog(barrierDismissible:false ,context: context, builder: (context){
      return AlertDialog(
        elevation: 5, 
        shape:RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
        title: const Text('Alert'),
        content:Column(
          mainAxisSize: MainAxisSize.min,
          children: const[
            Text('This is a simple alert dialog.'),
            SizedBox(height:10), 
            FlutterLogo(size:100)
          ],
        ),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Ok'),
          ),
        ],
      );
    });
  }
   void displaDialogIOS(BuildContext context){
    showDialog(barrierDismissible:false ,context: context, builder: (context){
      return CupertinoAlertDialog(
        title: const Text('Alert'),
        content:Column(
          mainAxisSize: MainAxisSize.min,
          children: const[
            Text('This is a simple alert dialog.'),
            SizedBox(height:10), 
            FlutterLogo(size:100)
          ],
        ),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Ok'),
          ),
        ],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Alert"),
      ),
      body:Center(
         child: ElevatedButton(
          child: const Text('Show Alert',style:TextStyle(fontSize:16)),
          onPressed: (){
            Platform.isAndroid
            ?displaDialog(context)
            :displaDialogIOS(context);
         })
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        },),
    );
  }
}