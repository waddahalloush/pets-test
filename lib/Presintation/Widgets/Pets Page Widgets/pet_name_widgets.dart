import 'package:flutter/material.dart';

class PetNameWidget extends StatelessWidget {
  const PetNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
          "Kate",
          style: TextStyle(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "5,2 Years Old",
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ],
    );
  }
}
