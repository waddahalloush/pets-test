import 'package:flutter/material.dart';

class PetsDateWidget extends StatelessWidget {
  const PetsDateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          Icons.timer,
          color: Colors.grey,
          size: 10,
        ),
        Text(
          "Date Of Bearth : 25/5/2013",
          style: TextStyle(
              color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
