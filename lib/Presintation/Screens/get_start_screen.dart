// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test/Core/Utils/app_colors.dart';
import 'package:test/Core/Utils/assets_manager.dart';

import '../../Core/Utils/app_router.dart';
import '../Widgets/app_buttons.dart';

class GetStartScreen extends StatelessWidget {
  const GetStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBG,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: size.width,
                height: size.height / 2,
                child: Stack(children: [
                  Positioned(
                    top: -80,
                    right: -80,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: AppColors.startBtn,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    right: 30,
                    bottom: 30,
                    child: Image.asset(
                      AssetsManager.startImage,
                      width: size.width / 2,
                      height: 100,
                    ),
                  ),
                  Positioned(
                    left: -40,
                    bottom: 0,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.loginBtn,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ])),
            const Text(
              "PETS MEDICAL CENTER",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Lorem Ipsum dotor est amet , contuctor",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "adippiscing elit , sed da eiumsmod",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            AppButtons(
              btnColor: AppColors.startBtn,
              btnText: "Get Start",
              onPress: () {
                Navigator.of(context).pushReplacementNamed(AppRouter.introScreen);
              },
            ),
            const SizedBox(
              height: 3,
            ),
            AppButtons(
              btnColor: AppColors.loginBtn,
              btnText: "Login",
              onPress: () {
                Navigator.of(context).pushReplacementNamed(AppRouter.login);
              },
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't wan't an account?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AppRouter.mainPage);
                  },
                  child: const Text(
                    "Sign Up Later",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
