import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.label, required this.image, this.onTap});

  final String image;
  final String label;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 0.3, color: colorScheme.secondary),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    image,
                    color: colorScheme.primary,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0),
              ),
              Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: colorScheme.secondaryContainer),
              ),
            ],
          ),
        ));
  }
}
