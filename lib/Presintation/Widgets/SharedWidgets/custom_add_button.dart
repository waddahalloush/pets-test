import 'package:flutter/material.dart';

import '../../../Core/Utils/app_colors.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    Key? key,
    required this.size,
    required this.text,
    required this.ontap,
  }) : super(key: key);

  final Size size;
  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap ,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(5),
        width: size.width,
        height: 30,
        decoration: BoxDecoration(
            color: AppColors.addButton,
            borderRadius: BorderRadius.circular(3)),
        child:  Text(
         text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
