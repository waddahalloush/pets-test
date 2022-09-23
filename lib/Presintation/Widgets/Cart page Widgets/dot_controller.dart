import 'package:flutter/material.dart';

import '../../../Core/Utils/app_colors.dart';

class DotController extends StatelessWidget {
  const DotController({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            4,
            (index) => AnimatedContainer(
                  margin: const EdgeInsets.only(right: 5),
                  duration: const Duration(milliseconds: 900),
                  width: currentPage == index ? 20 : 5,
                  height: 6,
                  decoration: BoxDecoration(
                      color: currentPage == index
                          ? AppColors.dottColor
                          : AppColors.containerBG,
                      borderRadius: BorderRadius.circular(10)),
                ))
      ],
    );
  }
}
