import 'package:flutter/material.dart';
import 'package:guru_shop/src/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.onTap,
    required this.product,
  });

  final ProductModel product;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
            border: Border.all(
                width: 0.3, color: Theme.of(context).colorScheme.secondary),
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
              child: Text(product.name,
                  maxLines: 2, style: Theme.of(context).textTheme.bodyMedium),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                product.price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: '',
                children: <TextSpan>[
                  TextSpan(
                      text: product.oldPrice,
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Theme.of(context).textTheme.bodySmall!.color,
                          decoration: TextDecoration.lineThrough)),
                  const TextSpan(text: ' '),
                  TextSpan(
                      text: product.discount,
                      style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(context).colorScheme.error)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
