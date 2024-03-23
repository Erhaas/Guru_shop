import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/list_item.dart';

@RoutePage()
class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return BaseView<LoginViewModel>(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
            Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Activity",
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
                            title: "Transaction Nike Air Zoom Product",
                            leading: Icon(
                              Icons.swap_vert,
                              color: colorScheme.primary,
                              size: 25.0,
                            ),
                            onTap: () => {},
                            subTitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text(
                                    "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo",
                                    style: textTheme.bodySmall!
                                        .copyWith(fontWeight: FontWeight.w200),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3.0),
                                  child: Text(
                                    "April 30, 2014 1:01 PM",
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
