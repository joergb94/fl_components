

import 'package:components/themes/theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String network_image;
  final String? name_image;

  const CustomCard2({
    super.key,
    required this.network_image,
    this.name_image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      shadowColor: AppTheme.primary.withOpacity(0.2),
      child: Column(
        children: [
          FadeInImage(
          placeholder:const AssetImage('assets/images/load.gif'), 
          image:NetworkImage(network_image),
          width: double.infinity,
          height: 260,
          fit:BoxFit.cover,
          fadeInDuration: const Duration(milliseconds:300),
          ),
          if(name_image != null)
            Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(5),
              child: Text(name_image?? '')
            )
        ],
        
      ),
    );
  }
}