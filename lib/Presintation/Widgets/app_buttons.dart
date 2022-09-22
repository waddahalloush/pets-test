import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color btnColor;
  final String btnText;
  final VoidCallback onPress;
  const AppButtons({
    Key? key,
    required this.btnColor,
    required this.btnText,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: btnColor,
            alignment: Alignment.center,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        onPressed: onPress,
        child: Text(
          btnText,
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
