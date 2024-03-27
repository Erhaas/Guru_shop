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
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

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
                        controller: myController,
                        prefixe: Icon(
                          Icons.search,
                          color: colorScheme.primary,
                        ),
                        placeholder: 'Search',
                        onChanged: (value) => setState(() {
                              myController.text = value;
                            }),
                        suffixe: !myController.value.text.isEmpty
                            ? InkWell(
                                onTap: () => setState(() {
                                  myController.clear();
                                }),
                                child: Icon(
                                  Icons.close,
                                  color: colorScheme.secondary,
                                ),
                              )
                            : SizedBox()),
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
                  child: ListView(
                    children: [
                      if (myController.value.text.isEmpty)
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
                                      onTap: () {
                                        setState(() {
                                          myController.text = category.label;
                                        });
                                      },
                                      label: category.label,
                                      image: category.image)
                              ],
                            )),
                      if (!myController.value.text.isEmpty) SearchResult()
                    ],
                  ),
                )));
  }
}

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});
  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 6),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                setState(() {
                  show = !show;
                });
              },
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "145 result",
                    style: textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.secondary),
                  )),
                  Row(
                    children: [
                      Text(
                        "Man Shoes",
                        style: textTheme.bodyMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        show ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                        size: 20,
                      )
                    ],
                  )
                ],
              )),
          if (show)
            Container(
              padding: const EdgeInsets.only(top: 12.0),
              child: ProductList(
                products: list_products,
                direction: Axis.vertical,
              ),
              //     Padding(
              //   padding: const EdgeInsets.only(top: 90.0),
              //   child: Alert(
              //     icon: Icons.close,
              //     title: "Product Not Found",
              //     description: "thank you for shopping using Guru Shop",
              //     label: "Back to Home",
              //   ),
              // )
            )
        ],
      ),
    );
  }
}
