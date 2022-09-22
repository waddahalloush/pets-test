import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:test/Core/Utils/app_colors.dart';
import 'package:test/Core/Utils/app_router.dart';
import 'package:test/Core/Utils/assets_manager.dart';

class IntroDuctionScreen extends StatelessWidget {
  const IntroDuctionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildImage(String assetName,
        [double width = 200, double height = 200]) {
      return Image.asset(
        assetName,
        width: width,
        height: height,
      );
    }

    const pageDecoration = PageDecoration(
      imagePadding: EdgeInsets.symmetric(vertical: 40),
      bodyPadding: EdgeInsets.symmetric(horizontal: 60),
      titleTextStyle: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20.0),
      bodyTextStyle: TextStyle(
        color: Colors.grey,
        fontSize: 10.0,
      ),
    );
    List<PageViewModel> introPg = [
      PageViewModel(
          title: "Get Advice",
          body:
              "Get advice on how to given the best care to your pet and how to keep it in the best condition",
          image: Center(child: _buildImage(AssetsManager.adviceIntroImage)),
          decoration: pageDecoration),
      PageViewModel(
          title: "Share",
          body:
              "You can recommended and share with your friend and contacs the canine profile that you like most",
          image: Center(child: _buildImage(AssetsManager.shareIntroImage)),
          decoration: pageDecoration),
      PageViewModel(
          title: "Find and Adopt it",
          body:
              "You have the opportunity to provide a comfortable home and food for those pets who need it",
          image: Center(child: _buildImage(AssetsManager.findIntroImage)),
          decoration: pageDecoration),
    ];
    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: AppColors.scaffoldBG,
        controlsPosition: const Position(left: 0, right: 0, bottom: 40),
        pages: introPg,
        dotsDecorator: const DotsDecorator(
          activeColor: Colors.black,
          size: Size.square(5.0),
          activeSize: Size.square(10.0),
          color: Colors.grey,
        ),
        doneStyle: TextButton.styleFrom(
          backgroundColor: AppColors.loginBtn,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
        ),
        nextStyle: TextButton.styleFrom(
          backgroundColor: AppColors.loginBtn,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
        ),
        backStyle: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
        ),
        back: const Text(
          "Back",
          style: TextStyle(color: Colors.black, fontSize: 10.0),
        ),
        showBackButton: true,
        showNextButton: true,
        done: const Text(
          "Done",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        next: const Text(
          "Next",
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        onDone: () {
          Navigator.of(context).pushReplacementNamed(AppRouter.startScreen);
        },
      ),
    );
  }
}
