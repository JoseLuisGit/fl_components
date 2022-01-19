import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';

class AppRoutes{

  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
        'alert': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(),
        'home': (BuildContext context) => const HomeScreen(),
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