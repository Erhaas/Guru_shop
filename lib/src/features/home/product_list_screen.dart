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
    final router = AutoRouter.of(context);
    return BaseView<HomeViewModel>(
        onModelReady: (model) => model.getProductList(category),
        builder: (BuildContext context, HomeViewModel model, Widget? child) =>
            Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              appBar: AppBar(
                  title: Text(title,
                      style: Theme.of(context).textTheme.bodyMedium),
                  titleTextStyle:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                  elevation: 0.4,
                  centerTitle: false,
                  iconTheme: IconThemeData(
                      color: Theme.of(context).colorScheme.secondary),
                  actionsIconTheme: IconThemeData(
                      color: Theme.of(context).colorScheme.secondary),
                  actions: const [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.search_outlined,
                        fill: 0.2,
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
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Super Flash Sale",
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                              Expanded(
                                child: Text(
                                  "50% Off",
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
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
