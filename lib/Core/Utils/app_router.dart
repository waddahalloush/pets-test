import 'package:flutter/material.dart';
import 'package:test/Presintation/main_screen.dart';

import '../../Presintation/Screens/add_pets_screen.dart';


class AppRouter {
  static const addPets = "addPets";
  static const mainPage = '/main';
 
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case addPets:
        return MaterialPageRoute(
          builder: (context) => const AddPets(),
        );
    
      case mainPage:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );
    
    }
    return null;
  }
}
