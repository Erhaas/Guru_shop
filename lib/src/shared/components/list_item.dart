import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.title,
    this.subTitle,
    this.verticalPadding,
    this.horizontalPadding,
    required this.leading,
    this.minLeadingWidth = 40,
    this.labelStyle,
    this.onTap,
    this.trailing,
  });

  final String title;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? minLeadingWidth;
  final Widget? leading;
  final TextStyle? labelStyle;
  final Widget? subTitle;
  final Widget? trailing;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final textThemes = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: onTap,
      child: ListTile(
          contentPadding: EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 10,
              vertical: verticalPadding ?? 5),
          horizontalTitleGap: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: labelStyle ??
                    textThemes.bodyLarge!.copyWith(fontWeight: FontWeight.w600),
              ),
              subTitle ?? SizedBox(),
            ],
          ),
          minLeadingWidth: minLeadingWidth,
          leading: leading ?? SizedBox(),
          trailing: trailing),
    );
  }
}
