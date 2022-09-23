import 'package:flutter/material.dart';

import '../../../Core/Utils/app_colors.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: AppColors.containerBG, borderRadius: BorderRadius.circular(5)),
    );
  }
}
