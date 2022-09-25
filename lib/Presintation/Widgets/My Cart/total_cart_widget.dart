import 'package:flutter/material.dart';

class TotalCartWidget extends StatelessWidget {
  final String amount;
  final String price;
  final bool isBold;
  const TotalCartWidget({
    Key? key,
    required this.amount,
    required this.price,
    this.isBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Text(
          amount,
          style: TextStyle(
              color: isBold ? Colors.black : Colors.grey,
              fontSize: 12,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
        const Spacer(),
        Text(
          price,
          style: TextStyle(
              color: isBold ? Colors.black : Colors.grey,
              fontSize: 12,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      ]),
    );
  }
}