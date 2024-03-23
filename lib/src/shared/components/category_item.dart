import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.label,
    required this.image,
  });

  final String image;
  final String label;

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
        onTap: () => '',
        child: Container(
          width: 80,
          padding: EdgeInsets.symmetric(vertical: 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 70,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 0.3, color: colorScheme.secondary),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(150.0))),
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
