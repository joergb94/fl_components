import 'package:components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:components/screens/screens.dart';

class AppRoutes{
  static const initialRoute = "Home";
  static final menuOptions = <MenuOption>[
    //MenuOption(route: 'Home',  name: 'Home Screen', screen:  const HomeScreen(),icon:Icons.star),
    MenuOption(route: 'List1',  name: 'List View 1', screen: const ListView1Screen() ,icon:Icons.layers),
    MenuOption(route: 'List2',  name: 'List View 2', screen: const ListView2Screen() ,icon:Icons.layers),
    MenuOption(route: 'alert',  name: 'Alert view', screen: const AlertScreen() ,icon:Icons.alarm),
    MenuOption(route: 'card',  name: 'Card view', screen: const CardScreen() ,icon:Icons.card_giftcard),
    MenuOption(route: 'Avatar',  name: 'Avatar view', screen: const AvatarScreen() ,icon:Icons.people),
    MenuOption(route: 'Animated',  name: 'Animated view', screen: const AnimatedScreen() ,icon:Icons.play_arrow),
    MenuOption(route: 'Inputs',  name: 'Inputs view', screen: const InputsScreen() ,icon:Icons.input_outlined),
    MenuOption(route: 'Slider',  name: 'Slider Screen View', screen: const SliderScreen() ,icon:Icons.slideshow_rounded),
    MenuOption(route: 'ListBuilder',  name: 'List Builder View', screen: const ListViewBuilderScreen() ,icon:Icons.screenshot),
  ];
  
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
  Map<String, Widget Function(BuildContext)> appRoutes = {};
     appRoutes.addAll({'Home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
        print(settings);
        return MaterialPageRoute(builder:(context) => const ListView2Screen(),);
      }
}