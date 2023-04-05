
import 'package:components/models/models.dart';
import 'package:components/router/app_routes.dart';
import 'package:components/themes/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final MenuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.separated(itemBuilder:(context, index) => ListTile(
        leading: Icon( MenuOptions[index].icon, color: AppTheme.primary,),
        title: Text(MenuOptions[index].name),
        onTap: () {
            Navigator.pushNamed(context,MenuOptions[index].route);
        },
      ), separatorBuilder:(_, __) => const Divider(), itemCount:MenuOptions.length),
    );
  }
}