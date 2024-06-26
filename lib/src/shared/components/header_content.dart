import 'package:flutter/material.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader(
      {super.key, required this.title, required this.child, this.action});

  final String title;
  final Widget child;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 6),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                title,
                style: textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              )),
              if (action != null) SizedBox(child: action)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: child,
          )
        ],
      ),
    );
  }
}
