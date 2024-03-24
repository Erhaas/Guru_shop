import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/data.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/alert.dart';
import 'package:guru_shop/src/shared/components/category_item.dart';
import 'package:guru_shop/src/shared/components/header_content.dart';
import 'package:guru_shop/src/shared/components/input.dart';
import 'package:guru_shop/src/shared/components/product_list.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    var size = MediaQuery.of(context).size;
    final double width = size.width;

    return BaseView<LoginViewModel>(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
            Scaffold(
                appBar: AppBar(
                    title: Input(
                      prefixe: Icon(
                        Icons.search,
                        color: colorScheme.primary,
                      ),
                      placeholder: 'Search',
                      suffixe: Icon(
                        Icons.close,
                        color: colorScheme.secondary,
                      ),
                    ),
                    leadingWidth: 200,
                    automaticallyImplyLeading: false,
                    elevation: 0.4,
                    centerTitle: false,
                    actionsIconTheme:
                        IconThemeData(color: colorScheme.secondary),
                    actions: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          size: 25,
                        ),
                      ),
                    ]),
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:

                      // Alert(
                      //   icon: Icons.close,
                      //   title: "Product Not Found",
                      //   description: "thank you for shopping using Guru Shop",
                      //   label: "Back to Home",
                      // )
                      ListView(
                    children: [
                      ContentHeader(
                          title: "Man Fashion",
                          child: GridView.count(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            childAspectRatio: 0.55,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            crossAxisCount: ((width / 70) as double).floor(),
                            children: [
                              for (final category in listCategories)
                                CategoryItem(
                                    label: category.label,
                                    image: category.image)
                            ],
                          )),
                      ContentHeader(
                          title: "Woman Fashion",
                          child: GridView.count(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            childAspectRatio: 0.55,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            crossAxisCount: ((width / 70) as double).floor(),
                            children: [
                              for (final category in listCategories)
                                CategoryItem(
                                    label: category.label,
                                    image: category.image)
                            ],
                          )
                          //  ProductList(
                          //   products: list_products,
                          //   direction: Axis.vertical,
                          // )
                          )
                    ],
                  ),
                )));
  }
}
