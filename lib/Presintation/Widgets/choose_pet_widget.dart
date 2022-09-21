// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:test/Core/Utils/app_colors.dart';

class ChoosePetWidget extends StatelessWidget {
  final String petType;
  final String petImage;

  const ChoosePetWidget({
    Key? key,
    required this.petType,
    required this.petImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 140,
      width: size.width * 0.3,
      decoration: BoxDecoration(
          color: AppColors.containerBG, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            petImage,
            height: 70,
            width: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            petType,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
