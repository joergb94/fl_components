import 'package:components/themes/theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _slidervalue = 100;
  bool _sliderenable = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title:const Text('Slider Screen')),
      body: Column(
        children: [
          Slider(
            min:50,
            max:400,
            value:_slidervalue,
            activeColor: AppTheme.primary,
            onChanged:
             _sliderenable? 
            (value){
              _slidervalue = value;
              setState(() {
                
              });
            }:null,
          ),
          Checkbox (value: _sliderenable, onChanged: (value){
            _sliderenable = value??true;
            setState(() {
              
            });
          }),
          CheckboxListTile( 
            title:const Text('enabled'),
           value: _sliderenable, 
           onChanged: (value){
        
            _sliderenable = value??true;
            setState(() {
              
            });
          }),
          Switch.adaptive(value:  _sliderenable,onChanged: (value){
        
            _sliderenable = value;
            setState(() {
              
            });
          }),
           SwitchListTile.adaptive(
            activeColor:AppTheme.primary,
            title: const Text('enabled'),
            value:  _sliderenable,
            onChanged: (value){
            _sliderenable = value;
            setState(() {
              
            });
          }),
          const AboutListTile(),
        Expanded(child: SingleChildScrollView(child:Image(image: const NetworkImage('https://assets.stickpng.com/images/580b57fcd9996e24bc43c325.png'),width:_slidervalue))),
          const SizedBox(height:50),
        ],
      ),
    );
  }
}