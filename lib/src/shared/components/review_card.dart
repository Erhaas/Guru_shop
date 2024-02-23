import 'package:flutter/material.dart';
import 'package:guru_shop/gen/assets.gen.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.images.pic2.path),
                    fit: BoxFit.fill),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "James Lawson",
                  style: textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Row(children: [
                  for (var i = 1; i <= 5; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Icon(
                        i <= 3 ? Icons.star : Icons.star_border,
                        size: 14,
                        color: i <= 3
                            ? colorScheme.tertiary
                            : colorScheme.secondary,
                      ),
                    ),
                  RichText(
                    text: TextSpan(
                      text: "4.5 ",
                      style: textTheme.bodyMedium,
                      children: <TextSpan>[
                        TextSpan(
                          text: '(5 Reviews)',
                          style: textTheme.bodyMedium!
                              .copyWith(color: colorScheme.secondary),
                        ),
                      ],
                    ),
                  ),
                ])
              ],
            )
          ],
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
                "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                style: textTheme.bodySmall!
                    .copyWith(color: colorScheme.secondary))),
        Container(
          height: 80,
          padding: const EdgeInsets.only(bottom: 16),
          child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                for (var i = 1; i <= 3; i++)
                  Container(
                    width: 72,
                    height: 72,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      image: DecorationImage(
                          image: AssetImage(Assets.images.shoe1.path),
                          fit: BoxFit.fill),
                    ),
                  ),
              ]),
        ),
        Text(
          "December 10, 2016",
          style: textTheme.bodySmall!.copyWith(color: colorScheme.secondary),
        )
      ],
    );
  }
}
