import 'package:flutter/material.dart';

class AuthButtons extends StatelessWidget {
  final Color btnColor;
  final String btnText;
  final VoidCallback onPress;
  const AuthButtons({
    Key? key,
    required this.btnColor,
    required this.btnText,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: btnColor,
            alignment: Alignment.center,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
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
