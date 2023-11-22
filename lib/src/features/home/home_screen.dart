import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/gen/assets.gen.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/header_content.dart';
import 'package:guru_shop/src/shared/components/input.dart';
import 'package:guru_shop/src/shared/utils/theme/colors.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseView(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
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
                  leadingWidth: 200,
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
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
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
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
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
                      const ContentHeader(
                        title: "Category",
                        action: Text("sdfsdf"),
                      ),
                      Placeholder()
                    ],
                  ),
                ),
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
