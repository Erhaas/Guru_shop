import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      this.onPressed,
      required this.text,
      this.radius = 5.00,
      this.textSize = 15.00,
      this.bgColor,
      this.color,
      this.textStyle,
      this.prefix});

  final String text;
  final VoidCallback? onPressed;
  final double radius;
  final double textSize;
  final Color? bgColor;
  final Color? color;
  final TextStyle? textStyle;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          // elevation: MaterialStateProperty.all(1.0),
          padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(vertical: 18, horizontal: 12)),
          backgroundColor: MaterialStateProperty.all<Color>(
              bgColor ?? Theme.of(context).colorScheme.primary),
          textStyle: MaterialStateProperty.all<TextStyle>(textStyle ??
              TextStyle(
                  color: color ?? Theme.of(context).colorScheme.onPrimary)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
                  side: BorderSide(
                      width: bgColor != null ? 0 : 0.2,
                      color: bgColor != null
                          ? Colors.transparent
                          : Theme.of(context).colorScheme.secondary)))),
      onPressed: onPressed,
      child: SizedBox(
        child: Stack(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: textSize, color: color),
              ),
            ),
            if (prefix != null)
              Positioned(
                left: 0,
                child: prefix!,
              )
            else
              const SizedBox(),
          ],
        ),
      ),
    );
  }
}
