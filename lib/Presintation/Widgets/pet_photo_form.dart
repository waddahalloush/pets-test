import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Core/Utils/app_colors.dart';
import '../../Core/Utils/assets_manager.dart';

class PetPhotoForm extends StatelessWidget {
  const PetPhotoForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DottedBorder(
        color: AppColors.dottedBorder,
        strokeWidth: 1,
        borderType: BorderType.RRect,
        radius: const Radius.circular(3),
        child: Container(
          width: size.width,
          height: 80,
          decoration: BoxDecoration(color: AppColors.containerBG),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsManager.uploadImage,
                  height: 30, width: 30),
              Text(
                "Upload Your Pet Photo",
                style: TextStyle(
                    color: AppColors.dottedBorder,
                    fontSize: 8,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
