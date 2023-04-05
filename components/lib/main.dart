import 'package:components/router/app_routes.dart';
import 'package:components/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:components/screens/screens.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      //home: const ListView2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes:AppRoutes.getAppRoutes(),
      onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      theme:AppTheme.primaryTheme,
    );
  }
}