import 'package:flutter/material.dart';
import 'package:guru_shop/src/data.dart';
import 'package:guru_shop/src/models/product_model.dart';

import 'product_cart.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.products,
    this.direction = Axis.vertical,
  });

  final List<ProductModel> products;
  final Axis direction;

  @override
  Widget build(BuildContext context) {
    if (direction == Axis.horizontal) {
      return ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (final product in list_products)
            SizedBox(width: 160, child: ProductCard(product: product))
        ],
      );
    } else {
      return GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 180,
              mainAxisExtent: 235,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.7),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(product: products[index]);
          });
    }
  }
}
