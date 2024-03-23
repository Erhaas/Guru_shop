import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/gen/assets.gen.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/list_item.dart';

@RoutePage()
class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final router = AutoRouter.of(context);

    return BaseView<LoginViewModel>(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
            Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Feed",
                    style: textTheme.bodyLarge,
                  ),
                  elevation: 0.4,
                  centerTitle: false,
                ),
                body: Center(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: ListView(children: [
                        for (var i = 1; i <= 3; i++)
                          ListItem(
                            title: "New Product",
                            minLeadingWidth: 65,
                            leading: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage(Assets.images.shoe1.path),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            onTap: () => {},
                            subTitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text(
                                    "Nike Air Zoom Pegasus 36 Miami - Special For your Activity",
                                    style: textTheme.bodySmall!
                                        .copyWith(fontWeight: FontWeight.w200),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "June 3, 2015 5:06 PM",
                                    style: textTheme.bodySmall!
                                        .copyWith(fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                      ])),
                )));
  }
}
