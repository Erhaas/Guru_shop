import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/src/shared/components/input.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guru_shop/src/core/enum/viewstate.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/core/viewmodels/product_reviews_viewmodel.dart';
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

    return BaseView<ProductReviewsViewModel>(
        onModelReady: (model) => model.retrieveProduct(productId),
        builder: (BuildContext context, ProductReviewsViewModel model,
                Widget? child) =>
            Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black),
                  onPressed: () => !model.addReview
                      ? Navigator.of(context).pop()
                      : model.writeReview(),
                ),
                title: Text(
                    !model.addReview
                        ? "${model.product.reviews}  Reviews"
                        : "Write Review",
                    style: textTheme.bodyLarge),
                elevation: 0.4,
                centerTitle: false,
              ),
              body: model.state == ViewState.Busy
                  ? const Loading()
                  : !model.addReview
                      ? ListView(
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
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.0),
                                      child: ReviewCard(),
                                    ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 50,
                                    child: Button(
                                      text: "Write Review",
                                      bgColor: colorScheme.primary,
                                      color: colorScheme.surface,
                                      onPressed: () => {model.writeReview()},
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      : ListView(
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          "Please write Overall level of satisfaction with your shipping / Delivery Service",
                                          style: textTheme.bodyMedium!.copyWith(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, bottom: 16),
                                        child: Row(children: [
                                          for (var i = 1; i <= 5; i++)
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5),
                                              child: IconButton(
                                                padding: EdgeInsets.zero,
                                                constraints: BoxConstraints(),
                                                splashRadius: 0.2,
                                                icon: Icon(
                                                  i <= model.stars
                                                      ? Icons.star
                                                      : Icons.star_border,
                                                  size: 25,
                                                  color: i <= model.stars
                                                      ? colorScheme.tertiary
                                                      : colorScheme.secondary,
                                                ),
                                                onPressed: () {
                                                  model.setStars = i;
                                                },
                                              ),
                                            ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 6),
                                            child: Text("${model.stars}/5",
                                                style: textTheme.bodyMedium!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: colorScheme
                                                            .secondary)),
                                          )
                                        ]),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5),
                                        child: Text(
                                          "Write Your Review",
                                          style: textTheme.bodyMedium!.copyWith(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Input(
                                        placeholder: 'Write you review here',
                                        maxLines: 6,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 5, top: 16),
                                        child: Text(
                                          "Add photo",
                                          style: textTheme.bodyMedium!.copyWith(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Wrap(
                                        runSpacing: 5,
                                        spacing: 5,
                                        children: [
                                          for (final file in model.files)
                                            Container(
                                                height: 75,
                                                width: 75,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      width: 0.3,
                                                      color: colorScheme
                                                          .secondary),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              10.0)),
                                                  image: DecorationImage(
                                                      image: FileImage(file),
                                                      fit: BoxFit.contain),
                                                )),
                                          Container(
                                            height: 75,
                                            width: 75,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 0.3,
                                                    color:
                                                        colorScheme.secondary),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(10.0))),
                                            child: IconButton(
                                              padding: EdgeInsets.zero,
                                              icon: const Icon(Icons.add),
                                              onPressed: () async {
                                                var picked = await FilePicker
                                                    .platform
                                                    .pickFiles(
                                                        type: FileType.image);
                                                if (picked != null) {
                                                  await model.addFile(
                                                      picked.files.first);
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 50,
                                        margin: const EdgeInsets.only(top: 15),
                                        child: Button(
                                          text: "Send Review",
                                          bgColor: colorScheme.primary,
                                          color: colorScheme.surface,
                                          onPressed: () =>
                                              {model.writeReview()},
                                        ),
                                      ),
                                    ],
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