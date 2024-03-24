import 'package:flutter/material.dart';
import 'package:guru_shop/src/shared/components/button.dart';

class Alert extends StatelessWidget {
  const Alert({
    super.key,
    this.icon = Icons.check,
    required this.title,
    required this.description,
    required this.label,
    this.onPressed,
  });

  final IconData icon;
  final String title;
  final String description;
  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(7),
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: colorScheme.primary,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: colorScheme.onPrimary,
            size: 35,
          ),
        ),
        Text(
          title,
          style: textTheme.titleMedium,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            description,
            style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w300),
          ),
        ),
        SizedBox(
            width: double.infinity,
            height: 40,
            child: Button(
              onPressed: onPressed,
              bgColor: colorScheme.primary,
              color: colorScheme.onPrimary,
              text: label,
              radius: 5.00,
              textSize: 15.00,
            )),
      ],
    );
  }
}
