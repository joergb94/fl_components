import 'package:flutter/material.dart';
import 'package:flutter/material.dart'; 

class AppTheme{
  static const Color primary = Colors.amber;
  static const Color secondary = Colors.red;
  static final ThemeData primaryTheme =  ThemeData.light().copyWith(
        primaryColor: primary,
        appBarTheme: const AppBarTheme(color: primary, elevation: 0,),
        //textbutton
        textButtonTheme: TextButtonThemeData(
          style:TextButton.styleFrom(primary: primary),
          ),
        //floatingactionbutton
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: primary,
            elevation: 0,
            ),
        //elecated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            shape: const StadiumBorder(),
            elevation:0
          ),
        ),
        //inpu decoration theme  
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )
        )
      );

  static final ThemeData secondaryTheme = ThemeData.dark().copyWith(
        primaryColor: secondary,
        appBarTheme: const AppBarTheme(color: secondary, elevation: 0),
         textButtonTheme: TextButtonThemeData(
          style:TextButton.styleFrom(primary: secondary),
          ),
          //floatingactionbutton
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: secondary,
            elevation: 0,
            ),
        //elecated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: secondary,
            shape: const StadiumBorder(),
            elevation:0
          ),
        ),
        //inpu decoration theme  
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: secondary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: secondary),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: secondary),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          )
        )
        );


}