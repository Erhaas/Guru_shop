import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/core/viewmodels/home_viewmodel.dart';
import 'package:guru_shop/src/core/viewmodels/product_viewmodel.dart';
import 'package:guru_shop/src/shared/components/product_cart.dart';

@RoutePage()
class FavoriteProductScreen extends StatelessWidget {
  const FavoriteProductScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productModel = Provider.of<ProductViewModel>(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BaseView<HomeViewModel>(
        builder: (BuildContext context, HomeViewModel model, Widget? child) =>
            Scaffold(
              appBar: AppBar(
                title: Text("Favorite Product", style: textTheme.bodyLarge),
                elevation: 0.4,
                centerTitle: false,
              ),
              body: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    GridView.count(
                      shrinkWrap: true,
                      childAspectRatio: 0.72,
                      physics: const NeverScrollableScrollPhysics(),
                      primary: false,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        for (final product in productModel.favoriteProducts)
                          ProductCard(product: product)
                      ],
                    ),
                  ],
                ),
              ),
            ));
  }
}
