import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(icon: Icons.title, route: 'home', title: 'This is a home', widget: HomeScreen()),
    MenuOption(icon: Icons.list, route: 'listview1', title: 'This is a listview1', widget: const Listview1Screen()),
    MenuOption(icon: Icons.list_alt_outlined, route: 'listview2', title: 'This is a listview2', widget: const Listview2Screen()),
    MenuOption(icon: Icons.card_giftcard, route: 'card', title: 'This is a card', widget: const CardScreen()),
    MenuOption(icon: Icons.align_vertical_bottom, route: 'alert', title: 'This is a alert', widget: const AlertScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
        'home': (BuildContext context) => HomeScreen(),
        'listview1': (BuildContext context) => const Listview1Screen(),
        'listview2': (BuildContext context) => const Listview2Screen(),
      };

  static Route<dynamic> onUnknownRoute( RouteSettings settings ) {
    {
        //redirect to cardScreen if the route is unknown
        return MaterialPageRoute(builder: (context)=>const CardScreen());
    }
  }


}