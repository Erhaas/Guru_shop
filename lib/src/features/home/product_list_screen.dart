import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/gen/assets.gen.dart';
import 'package:guru_shop/src/core/viewmodels/home_viewmodel.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/product_cart.dart';

@RoutePage()
class ProductListScreen extends StatelessWidget {
  const ProductListScreen({
    super.key,
    @PathParam('id') required this.category,
    @PathParam('title') required this.title,
  });

  final String category;
  final String title;
  @override
  Widget build(BuildContext context) {
    // final router = AutoRouter.of(context);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BaseView<HomeViewModel>(
        onModelReady: (model) => model.getProductList(category),
        builder: (BuildContext context, HomeViewModel model, Widget? child) =>
            Scaffold(
              appBar: AppBar(
                  title: Text(title, style: textTheme.bodyLarge),
                  elevation: 0.4,
                  centerTitle: false,
                  actions: const [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.search_outlined,
                        size: 25,
                      ),
                    ),
                  ]),
              body: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      height: 200,
                      margin: const EdgeInsets.symmetric(vertical: 16.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage(Assets.images.promo1.path),
                            fit: BoxFit.fill),
                        color: colorScheme.secondary,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Super Flash Sale",
                                style: textTheme.displayLarge!
                                    .copyWith(color: colorScheme.onPrimary),
                              ),
                              Expanded(
                                child: Text(
                                  "50% Off",
                                  style: textTheme.displayLarge!
                                      .copyWith(color: colorScheme.onPrimary),
                                ),
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
                        for (final product in model.productList(category))
                          ProductCard(product: product)
                      ],
                    ),
                  ],
                ),
              ),
            ));
  }
}
