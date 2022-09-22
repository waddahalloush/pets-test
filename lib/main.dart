import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test/Core/Utils/app_colors.dart';
import 'package:test/Core/Utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: AppColors.scaffoldBG),
    );
    return MaterialApp(
      title: 'Pets App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBG,
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRouter.startScreen,
    );
  }
}
