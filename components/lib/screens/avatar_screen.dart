import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ray Gamboa'),
        actions:[
          Container(
            margin: const EdgeInsets.only(right:5),
            child: const CircleAvatar(
              backgroundColor: Colors.red,
              child:Text('RG'),
              
            ),
          )
        ]
      ),
      body: const Center(
         child: CircleAvatar(
              maxRadius: 110,
              backgroundImage: NetworkImage('https://static.wikia.nocookie.net/hunterxhunter/images/8/86/HxH2011_EP50_Feitan_Portrait.png/revision/latest?cb=20230121061055'),
            ),
      ),
    );
  }
}