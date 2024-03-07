import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/data.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/core/viewmodels/product_details_viewmodel.dart';
import 'package:guru_shop/src/core/viewmodels/product_viewmodel.dart';
import 'package:guru_shop/src/shared/components/carousel.dart';
import 'package:guru_shop/src/shared/components/loading.dart';
import 'package:guru_shop/src/shared/components/button.dart';
import 'package:guru_shop/src/shared/components/header_content.dart';
import 'package:guru_shop/src/shared/components/product_cart.dart';
import 'package:guru_shop/src/shared/components/review_card.dart';

@RoutePage()
class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    @PathParam('id') required this.productId,
  });

  final String productId;
  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
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
                          padding: const EdgeInsets.symmetric(
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
                                      icon: const Icon(Icons.favorite_border))
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
                                padding: const EdgeInsets.only(bottom: 0),
                                child: Text(
                                  model.product.price,
                                  style: textTheme.titleMedium!.copyWith(
                                      color: colorScheme.primary,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              const SelectSize(
                                sizes: ["7", "6.5", "6", "5.5"],
                              ),
                              // const SizedBox(
                              //   height: 24,
                              // ),
                              const SelectColor(
                                colors: [
                                  "red",
                                  "blue",
                                  "yellow",
                                  "green",
                                  "purple",
                                ],
                              ),
                              ContentHeader(
                                title: "Specification",
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Shown:",
                                          style: textTheme.bodyMedium!.copyWith(
                                              color: colorScheme.secondary),
                                        ),
                                        const Spacer(),
                                        Text(
                                            "Laser Blue/Anthracite/Watermelon/White",
                                            style: textTheme.bodyMedium!
                                                .copyWith(
                                                    color:
                                                        colorScheme.secondary)),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        Text("Style:",
                                            style: textTheme.bodyMedium!
                                                .copyWith(
                                                    color:
                                                        colorScheme.secondary)),
                                        const Spacer(),
                                        Text("CD0113-400",
                                            style: textTheme.bodyMedium!
                                                .copyWith(
                                                    color:
                                                        colorScheme.secondary)),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Text(
                                        "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                                        style: textTheme.bodyMedium!.copyWith(
                                            color: colorScheme.secondary))
                                  ],
                                ),
                              ),
                              ContentHeader(
                                  title: "Reviews",
                                  action: GestureDetector(
                                    onTap: () => {
                                      router.push(ProductReviewsRoute(
                                          productId: productId))
                                    },
                                    child: Text('See More',
                                        style: textTheme.bodyLarge!.copyWith(
                                            color: colorScheme.primary)),
                                  ),
                                  child: const ReviewCard()),
                              ContentHeader(
                                  title: "You Might Also Like",
                                  child: SizedBox(
                                    height: 240,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        for (final product in list_products)
                                          SizedBox(
                                              width: 160,
                                              child:
                                                  ProductCard(product: product))
                                      ],
                                    ),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: Button(
                                  text: productModel.inCart(model.product)
                                      ? "In Cart"
                                      : "Add To Cart In",
                                  bgColor: productModel.inCart(model.product)
                                      ? colorScheme.secondary
                                      : colorScheme.primary,
                                  color: colorScheme.surface,
                                  onPressed: () => {
                                    productModel.inCart(model.product)
                                        ? productModel
                                            .removeToCart(model.product)
                                        : productModel.addToCart(model.product)
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
            ));
  }
}

class SelectSize extends StatelessWidget {
  const SelectSize({super.key, required this.sizes});

  final List<String> sizes;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return ContentHeader(
        title: "Select Size",
        child: Row(
          children: [
            for (var size in sizes)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 48,
                    width: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                            color: size == "6"
                                ? colorScheme.primary
                                : colorScheme.secondary,
                            width: 1)),
                    child: Text(size,
                        style: textTheme.bodyMedium!
                            .copyWith(fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
          ],
        ));
  }
}

class SelectColor extends StatelessWidget {
  const SelectColor({super.key, required this.colors});

  final List<String> colors;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final Map<String, Color> colorsPanel = {
      "red": Colors.redAccent,
      "blue": Colors.blueAccent,
      "yellow": Colors.yellowAccent,
      "green": Colors.greenAccent,
      "purple": Colors.purpleAccent,
    };

    return ContentHeader(
        title: "Select Size",
        child: Row(
          children: [
            for (var color in colors)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 48,
                    width: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colorsPanel[color],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                    ),
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color:
                            color == "red" ? Colors.white : Colors.transparent,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50.0)),
                      ),
                    ),
                  ),
                ),
              ),
          ],
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