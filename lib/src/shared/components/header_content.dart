import 'package:flutter/material.dart';

class ContentHeader extends StatelessWidget {
  const ContentHeader({super.key, required this.title, this.action});

  final String title;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 6),
      child: Row(
        children: [
          Expanded(
              child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          )),
          if (action != null)
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
        ],
      ),
    );
  }
}
