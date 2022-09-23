import 'package:flutter/material.dart';
import 'package:test/Core/Utils/assets_manager.dart';

class PetsPhotoWidget extends StatelessWidget {
  const PetsPhotoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(AssetsManager.catImage), fit: BoxFit.cover),
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
          boxShadow: const [BoxShadow(blurRadius: 2)]),
    );
  }
}
