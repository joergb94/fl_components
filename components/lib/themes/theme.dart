import 'package:flutter/material.dart';
import 'package:flutter/material.dart'; 

class AppTheme{
  static const Color primary = Colors.amber;
  static final ThemeData primaryTheme =  ThemeData.dark().copyWith(
        primaryColor: primary,
        appBarTheme: const AppBarTheme(color: primary, elevation: 0,),

      );
}