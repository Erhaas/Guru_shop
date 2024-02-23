import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/core/viewmodels/product_details_viewmodel.dart';
import 'package:guru_shop/src/core/viewmodels/product_viewmodel.dart';
import 'package:guru_shop/src/shared/components/loading.dart';
import 'package:guru_shop/src/shared/components/button.dart';
import 'package:guru_shop/src/shared/components/header_content.dart';
import 'package:guru_shop/src/shared/components/review_card.dart';

@RoutePage()
class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({
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
                title: Text("${model.product.reviews}  Reviews",
                    style: textTheme.bodyLarge),
                elevation: 0.4,
                centerTitle: false,
              ),
              body: model.state == ViewState.Busy
                  ? const Loading()
                  : ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (final product in List<int>.generate(
                                  model.product.reviews, (i) => i + 1))
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.0),
                                  child: ReviewCard(),
                                ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: double.infinity,
                                height: 57,
                                child: Button(
                                  text: "Write Review",
                                  bgColor: colorScheme.primary,
                                  color: colorScheme.surface,
                                  onPressed: () => {},
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