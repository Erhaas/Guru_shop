import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      this.onPressed,
      required this.text,
      this.raduis = 10.00,
      this.textSize = 20.00,
      this.bgColor,
      this.color});

  final String text;
  final VoidCallback? onPressed;
  final double raduis;
  final double textSize;
  final Color? bgColor;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(raduis),
        ),
        padding: const EdgeInsets.fromLTRB(12, 15, 12, 15),
        elevation: 2.0,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: textSize, color: color),
      ),
    );
  }
}
