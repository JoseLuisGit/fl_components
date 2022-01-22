import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(icon: Icons.title, route: 'home', title: 'This is a home', screen: const HomeScreen()),
    MenuOption(icon: Icons.list, route: 'listview1', title: 'This is a listview1', screen: const Listview1Screen()),
    MenuOption(icon: Icons.list_alt_outlined, route: 'listview2', title: 'This is a listview2', screen: const Listview2Screen()),
    MenuOption(icon: Icons.card_giftcard, route: 'card', title: 'This is a card', screen: const CardScreen()),
    MenuOption(icon: Icons.align_vertical_bottom, route: 'alert', title: 'This is a alert', screen: const AlertScreen()),
    MenuOption(icon: Icons.circle, route: 'circle', title: 'This is a circle', screen: const CircleScreen()),
    
  ];


  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    final Map<String, Widget Function(BuildContext)> routes = {};

    for (MenuOption option in menuOption) {
      routes.addAll({option.route: (BuildContext ctx) => option.screen});
    }

    return routes;
  } 


  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'alert': (BuildContext context) => const AlertScreen(),
  //       'card': (BuildContext context) => const CardScreen(),
  //       'home': (BuildContext context) => const HomeScreen(),
  //       'listview1': (BuildContext context) => const Listview1Screen(),
  //       'listview2': (BuildContext context) => const Listview2Screen(),
  //     };

  static Route<dynamic> onUnknownRoute( RouteSettings settings ) {
    {
        //redirect to cardScreen if the route is unknown
        return MaterialPageRoute(builder: (context)=>const CardScreen());
    }
  }


}