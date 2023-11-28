import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guru_shop/gen/assets.gen.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/core/viewmodels/home_viewmodel.dart';
import 'package:guru_shop/src/data.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/header_content.dart';
import 'package:guru_shop/src/shared/components/input.dart';
import 'package:guru_shop/src/shared/components/loading.dart';
import 'package:guru_shop/src/shared/components/product_cart.dart';
import 'package:guru_shop/src/shared/utils/theme/colors.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return BaseView<HomeViewModel>(
        onModelReady: (model) => {
              model
                ..getProduct()
                ..getProductList("flash_sale")
                ..getProductList("mega_sale")
            },
        builder: (BuildContext context, HomeViewModel model, Widget? child) =>
            Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              appBar: AppBar(
                  title: Center(
                    child: Input(
                      prefixe: Icon(
                        Icons.search,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      placeholder: 'Search',
                    ),
                  ),
                  automaticallyImplyLeading: false,
                  leadingWidth: 200,
                  elevation: 0.4,
                  centerTitle: false,
                  actionsIconTheme: IconThemeData(
                      color: Theme.of(context).colorScheme.secondary),
                  actions: const [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.favorite_outline,
                        fill: 0.2,
                        size: 25,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
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
                          Container(
                            height: 200,
                            margin: const EdgeInsets.only(top: 16.0),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(Assets.images.promo1.path),
                                  fit: BoxFit.fill),
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Super Flash Sale",
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "50% Off",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge,
                                      ),
                                    ),
                                    const PromotionTime(),
                                  ]),
                            ),
                          ),
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
                                      style: TextStyle(
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .fontSize,
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)),
                                ),
                              ),
                              child: SizedBox(
                                height: 120,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    for (final category in listCategories)
                                      CategoryItem(
                                          label: category.label,
                                          image: category.image),
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
                                    style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .fontSize,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary)),
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
                                    style: TextStyle(
                                        fontSize: Theme.of(context)
                                            .textTheme
                                            .titleSmall!
                                            .fontSize,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary)),
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
                              color: Theme.of(context).colorScheme.secondary,
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
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge,
                                      ),
                                    ),
                                    Text(
                                      "We recommend the best for you",
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .color),
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
                      border: Border.all(
                          width: 0.3,
                          color: Theme.of(context).colorScheme.secondary),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(150.0))),
                  child: SvgPicture.asset(
                    image,
                    color: Theme.of(context).colorScheme.primary,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0),
              ),
              Text(
                label,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ));
  }
}

class PromotionTime extends StatelessWidget {
  const PromotionTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(right: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(
              "08",
              style: Theme.of(context).textTheme.titleMedium,
            )),
        const Text(
          ":",
          style: TextStyle(color: whiteColor, fontSize: 16),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(
              "32",
              style: Theme.of(context).textTheme.titleMedium,
            )),
        const Text(
          ":",
          style: TextStyle(color: whiteColor, fontSize: 16),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Text(
              "42",
              style: Theme.of(context).textTheme.titleMedium,
            )),
      ],
    );
  }
}
