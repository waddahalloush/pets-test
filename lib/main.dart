import 'package:flutter/material.dart';
import 'package:test/Core/Utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pets App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
     onGenerateRoute: AppRouter.onGenerateRoute,
     initialRoute: AppRouter.mainPage,
    );
  }
}
