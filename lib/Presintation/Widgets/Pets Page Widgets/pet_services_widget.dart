import 'package:flutter/material.dart';

class PetsServicesWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String date;
  final bool value;
  final void Function(bool?) onchange;

  const PetsServicesWidget({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    required this.date,
    required this.value,
    required this.onchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: CheckboxListTile(
        value: value,
        onChanged: onchange,
        secondary: Container(
          alignment: Alignment.center,
          height: 50,
          width: 50,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15)),
          child: Icon(icon, size: 30, color: Colors.grey),
        ),
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "Dose Date : $date",
          style: const TextStyle(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
