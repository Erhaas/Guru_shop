import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        router.push(ProductDetailsRoute(productId: product.id));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
            border: Border.all(width: 0.3, color: colorScheme.secondary),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              margin: const EdgeInsets.only(bottom: 5.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(product.image), fit: BoxFit.cover),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                product.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                product.price,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: '',
                children: <TextSpan>[
                  TextSpan(
                      text: product.oldPrice,
                      style: textTheme.bodySmall!.copyWith(
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.normal)),
                  const TextSpan(text: ' '),
                  TextSpan(
                      text: product.discount,
                      style: textTheme.bodySmall!.copyWith(
                          color: colorScheme.error,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
