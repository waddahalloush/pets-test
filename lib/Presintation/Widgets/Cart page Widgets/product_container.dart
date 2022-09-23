import 'package:flutter/material.dart';

import '../../../Core/Utils/app_colors.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
          color: AppColors.containerBG,
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
