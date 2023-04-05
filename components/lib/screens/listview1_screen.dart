import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final animes = const ['Pokemon','Dragon Ball','Naruto','Bleach','Digimon'];
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView1Screen")
      ),
      body: ListView(
       
        children: [
          const ListTileTheme(child: ListTile( 
            leading: Icon(Icons.star),
            title:Text('Animes')
            )),
          ListBody(
            children: [
              ...animes.map((anime) => ListTile( 
              trailing: const Icon(Icons.arrow_circle_right),
              title:Text(anime)
              ) ).toList(),
              
            ],
          )
        ],
      )
      );
  }
}