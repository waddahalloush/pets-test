import 'package:flutter/material.dart';
import 'package:test/Presintation/Screens/introduction_screen.dart';
import 'package:test/Presintation/Screens/login_screen.dart';
import 'package:test/Presintation/Screens/signup_screen.dart';
import 'package:test/Presintation/main_screen.dart';
import '../../Presintation/Screens/get_start_screen.dart';


class AppRouter {
  static const login = "/login";
  static const signup = "/signup";
  static const mainPage = '/main';
  static const startScreen = '/start';
  static const introScreen = '/intro';
 
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (context) => const LogInScreen(),
        );
    
      case signup:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
    
      case mainPage:
        return MaterialPageRoute(
          builder: (context) => const MainPage(),
        );
    
      case startScreen:
        return MaterialPageRoute(
          builder: (context) => const GetStartScreen(),
        );
      case introScreen:
        return MaterialPageRoute(
          builder: (context) => const IntroDuctionScreen(),
        );
    
    }
    return null;
  }
}
