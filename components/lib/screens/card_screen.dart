

import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body:ListView(
        padding: const EdgeInsets.symmetric(horizontal:20, vertical:10),
        children: const [
            CustomCard(),
            SizedBox(height:10),
            CustomCard2(network_image: 'https://www.superprof.co.in/blog/wp-content/uploads/2018/02/landscape-photography-tutorials.jpg',),
            SizedBox(height:10),
            CustomCard2(network_image: 'https://images.squarespace-cdn.com/content/v1/59523d5c4c8b031b6d9dcb5b/1645865436351-NF1WX4AHJUE43OZ3GJCY/_S6A1420-Edit-Edit.jpg?format=2500w',),
        ]
          
   
      )
    );
  }
}

