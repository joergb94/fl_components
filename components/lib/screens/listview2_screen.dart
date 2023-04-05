import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final animes = const ['Pokemon','Dragon Ball','Naruto','Bleach','Digimon'];
  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView2Screen"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(title: Text(animes[index]), trailing: const Icon(Icons.star, color:Colors.amber,),onTap: () {
            
          },) ,
          separatorBuilder:(_ , __) => const Divider(),
          itemCount: animes.length,
          
      )
      );
  }
}