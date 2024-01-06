import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/core/viewmodels/product_details_viewmodel.dart';
import 'package:guru_shop/src/core/viewmodels/product_viewmodel.dart';
import 'package:guru_shop/src/shared/components/carousel.dart';
import 'package:guru_shop/src/shared/components/loading.dart';

@RoutePage()
class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    @PathParam('id') required this.productId,
  });

  final String productId;
  @override
  Widget build(BuildContext context) {
    final productModel = Provider.of<ProductViewModel>(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BaseView<ProductDetailsViewModel>(
        onModelReady: (model) => model.retrieveProduct(productId),
        builder: (BuildContext context, ProductDetailsViewModel model,
                Widget? child) =>
            Scaffold(
              appBar: AppBar(
                  title: Text(model.product.name, style: textTheme.bodyLarge),
                  elevation: 0.4,
                  centerTitle: false,
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_outlined,
                        size: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.more_vert,
                        size: 25,
                      ),
                    ),
                  ]),
              body: model.state == ViewState.Busy
                  ? const Loading()
                  : ListView(
                      shrinkWrap: true,
                      children: [
                        Carousel(height: 230, items: [
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(model.product.image),
                                    fit: BoxFit.fitWidth),
                                color: colorScheme.secondary,
                              )),
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(model.product.image),
                                    fit: BoxFit.fitWidth),
                                color: colorScheme.secondary,
                              ))
                        ]),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    model.product.name,
                                    style: textTheme.titleMedium,
                                  )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite_border))
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, bottom: 16),
                                child: Row(children: [
                                  for (var i = 1; i <= 5; i++)
                                    Padding(
                                      padding: const EdgeInsets.only(right: 2),
                                      child: Icon(
                                        i <= model.product.stars
                                            ? Icons.star
                                            : Icons.star_border,
                                        size: 18,
                                        color: i <= model.product.stars
                                            ? colorScheme.tertiary
                                            : colorScheme.secondary,
                                      ),
                                    )
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Text(
                                  model.product.price,
                                  style: textTheme.titleMedium!
                                      .copyWith(color: colorScheme.primary),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
            ));
  }
}

                        // GridView.count(
                        //   shrinkWrap: true,
                        //   childAspectRatio: 0.72,
                        //   physics: const NeverScrollableScrollPhysics(),
                        //   primary: false,
                        //   mainAxisSpacing: 10,
                        //   crossAxisCount: 2,
                        //   children: <Widget>[
                        //     for (final product in productModel.favoriteProducts)
                        //       ProductCard(product: product)
                        //   ],
                        // ),