import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedScreen extends StatefulWidget {
  
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.black;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(5); 
  
  void changeShape(){
    final rng = Random();
    _width = rng.nextDouble()* 500;
    _height = rng.nextDouble()* 500;
    _color = Color.fromRGBO(
      rng.nextInt(255),
      rng.nextInt(255),
      rng.nextInt(255),
      1
    );
    _borderRadius = BorderRadius.circular( rng.nextDouble()*50);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration(milliseconds:400),
          curve: Curves.bounceOut,
          width: _width,
          height:_height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow),),
    );
  }
}