import 'package:flutter/material.dart';
import 'package:test/Core/Utils/app_colors.dart';
import 'package:test/Presintation/Screens/my_cart_screen.dart';
import 'package:test/Presintation/Screens/profile_screen.dart';
import 'Screens/home_page.dart';
import 'Screens/pets_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomePage(),
    const PetsPage(),
    const MyCartScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.scaffoldBG,
            currentIndex: currentIndex,
            onTap: (index) => setState(() {
                  currentIndex = index;
                }),
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey.shade700,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.pets), label: "Pets"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: "Chart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded), label: "Add"),
            ]),
        body: screens[currentIndex],
      ),
    );
  }
}
