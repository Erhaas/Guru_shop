import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/gen/assets.gen.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/core/viewmodels/home_viewmodel.dart';
import 'package:guru_shop/src/data.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/carousel.dart';
import 'package:guru_shop/src/shared/components/category_item.dart';
import 'package:guru_shop/src/shared/components/header_content.dart';
import 'package:guru_shop/src/shared/components/input.dart';
import 'package:guru_shop/src/shared/components/loading.dart';
import 'package:guru_shop/src/shared/components/product_cart.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BaseView<HomeViewModel>(
        onModelReady: (model) => {
              model
                ..getProduct()
                ..getProductList("flash_sale")
                ..getProductList("mega_sale")
            },
        builder: (BuildContext context, HomeViewModel model, Widget? child) =>
            Scaffold(
              appBar: AppBar(
                  title: Center(
                    child: Input(
                      prefixe: Icon(
                        Icons.search,
                        color: colorScheme.primary,
                      ),
                      placeholder: 'Search',
                    ),
                  ),
                  automaticallyImplyLeading: false,
                  leadingWidth: 200,
                  elevation: 0.4,
                  centerTitle: false,
                  actionsIconTheme: IconThemeData(color: colorScheme.secondary),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline,
                        size: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        router.push(const NotificationsRoute());
                      },
                      icon: const Icon(
                        Icons.notifications_outlined,
                        size: 25,
                      ),
                    ),
                  ]),
              body: model.state == ViewState.Busy
                  ? const Loading()
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                      child: ListView(
                        children: [
                          Carousel(items: [
                            Container(
                              height: 200,
                              margin: const EdgeInsets.only(top: 16.0),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image:
                                        AssetImage(Assets.images.promo1.path),
                                    fit: BoxFit.fill),
                                color: colorScheme.secondary,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Super Flash Sale",
                                        style: textTheme.displayLarge!.copyWith(
                                            color: colorScheme.onPrimary),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "50% Off",
                                          style: textTheme.displayLarge!
                                              .copyWith(
                                                  color: colorScheme.onPrimary),
                                        ),
                                      ),
                                      const PromotionTime(),
                                    ]),
                              ),
                            ),
                            Container(
                              height: 200,
                              margin: const EdgeInsets.only(top: 16.0),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image:
                                        AssetImage(Assets.images.promo1.path),
                                    fit: BoxFit.fill),
                                color: colorScheme.secondary,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Super Flash Sale",
                                        style: textTheme.displayLarge!.copyWith(
                                            color: colorScheme.onPrimary),
                                      ),
                                      Expanded(
                                        child: Text(
                                          "50% Off",
                                          style: textTheme.displayLarge!
                                              .copyWith(
                                                  color: colorScheme.onPrimary),
                                        ),
                                      ),
                                      const PromotionTime(),
                                    ]),
                              ),
                            ),
                          ]),
                          ContentHeader(
                              title: "Category",
                              action: GestureDetector(
                                onTap: () => {},
                                child: GestureDetector(
                                  onTap: () => {
                                    router.push(ProductListRoute(
                                        category: "category",
                                        title: "Product List"))
                                  },
                                  child: Text('More Category',
                                      style: textTheme.bodyLarge!.copyWith(
                                          color: colorScheme.primary)),
                                ),
                              ),
                              child: SizedBox(
                                height: 120,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    for (final category in listCategories)
                                      Container(
                                        width: 70,
                                        margin: EdgeInsets.only(right: 5),
                                        child: CategoryItem(
                                            label: category.label,
                                            image: category.image),
                                      )
                                  ],
                                ),
                              )),
                          ContentHeader(
                              title: "Flash Sale",
                              action: GestureDetector(
                                onTap: () => {
                                  router.push(ProductListRoute(
                                      category: "flash_sale",
                                      title: "Flash Sale"))
                                },
                                child: Text('See More',
                                    style: textTheme.bodyLarge!
                                        .copyWith(color: colorScheme.primary)),
                              ),
                              child: SizedBox(
                                height: 240,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    for (final product
                                        in model.productList('flash_sale'))
                                      SizedBox(
                                          width: 160,
                                          child: ProductCard(product: product))
                                  ],
                                ),
                              )),
                          ContentHeader(
                              title: "Mega Sale",
                              action: GestureDetector(
                                onTap: () => {
                                  router.push(ProductListRoute(
                                      category: "mega_sale",
                                      title: "Mega Sale"))
                                },
                                child: Text('See More',
                                    style: textTheme.bodyLarge!
                                        .copyWith(color: colorScheme.primary)),
                              ),
                              child: SizedBox(
                                height: 240,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    for (final product
                                        in model.productList('mega_sale'))
                                      SizedBox(
                                          width: 160,
                                          child: ProductCard(product: product))
                                  ],
                                ),
                              )),
                          Container(
                            height: 200,
                            margin: const EdgeInsets.symmetric(vertical: 16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(Assets.images.promo2.path),
                                  fit: BoxFit.fill),
                              color: colorScheme.secondary,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 30.0, horizontal: 40),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Recomended Product",
                                        style: textTheme.displayLarge!.copyWith(
                                            color: colorScheme.onPrimary),
                                      ),
                                    ),
                                    Text(
                                      "We recommend the best for you",
                                      style: textTheme.bodyMedium!.copyWith(
                                          color: colorScheme.onPrimary),
                                    ),
                                  ]),
                            ),
                          ),
                          GridView.count(
                            shrinkWrap: true,
                            childAspectRatio: 0.72,
                            physics: const NeverScrollableScrollPhysics(),
                            primary: false,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2,
                            children: <Widget>[
                              for (final product in model.products)
                                ProductCard(product: product)
                            ],
                          ),
                        ],
                      ),
                    ),
            ));
  }
}

class PromotionTime extends StatelessWidget {
  const PromotionTime({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(right: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colorScheme.background,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(
              "08",
              style:
                  textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w700),
            )),
        Text(
          ":",
          style: textTheme.titleSmall!.copyWith(color: colorScheme.onPrimary),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colorScheme.background,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(
              "32",
              style:
                  textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w700),
            )),
        Text(
          ":",
          style: textTheme.titleSmall!.copyWith(color: colorScheme.onPrimary),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colorScheme.background,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(
              "42",
              style:
                  textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w700),
            )),
      ],
    );
  }
}
