import 'package:flutter/material.dart';
import 'package:guru_shop/src/shared/utils/theme/colors.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      this.onPressed,
      required this.text,
      this.raduis = 5.00,
      this.textSize = 15.00,
      this.bgColor,
      this.color,
      this.textStyle,
      this.prefix});

  final String text;
  final VoidCallback? onPressed;
  final double raduis;
  final double textSize;
  final Color? bgColor;
  final Color? color;
  final TextStyle? textStyle;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          elevation: MaterialStateProperty.all(1.0),
          padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.fromLTRB(12, 16, 12, 16)),
          backgroundColor: MaterialStateProperty.all<Color>(
              bgColor ?? Theme.of(context).colorScheme.surface),
          textStyle: MaterialStateProperty.all<TextStyle>(textStyle ??
              TextStyle(color: color ?? Theme.of(context).colorScheme.primary)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(raduis),
                  side: BorderSide(
                      width: bgColor == null ? 1 : 0.4,
                      color: Theme.of(context).colorScheme.secondary)))),
      onPressed: onPressed,
      child: SizedBox(
        child: Stack(
          children: [
            if (prefix != null)
              Positioned(
                right: 0,
                child: prefix!,
              )
            else
              const Expanded(flex: 0, child: SizedBox()),
            Container(
              color: primaryBlue,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: textSize, color: color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
