import 'package:components/themes/theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:[
          const ListTile(
            leading :Icon(Icons.people_sharp),
            title: Text('Ray'),
            subtitle: Text('Gamboa'),
          ), Padding(
            padding: const EdgeInsets.only( right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                TextButton(
                  onPressed: (){},
                  child: const Text('Ok'),
                  
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text('Cancel'),
              
                ),
              ]
            ),
          )
          ]
      ),
        
      );
  }
}