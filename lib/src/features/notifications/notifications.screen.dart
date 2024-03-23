import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/list_item.dart';

@RoutePage()
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final router = AutoRouter.of(context);

    return BaseView<LoginViewModel>(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
            Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Notifications",
                    style: textTheme.bodyLarge,
                  ),
                  elevation: 0.4,
                  centerTitle: false,
                ),
                body: Center(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: ListView(children: [
                        ListItem(
                          title: "Offer",
                          icon: Icons.local_offer_outlined,
                          onTap: () => {router.push(const OfferRoute())},
                          trailing: const Badge(label: Text("2")),
                        ),
                        ListItem(
                          title: "Feed",
                          icon: Icons.feed_outlined,
                          onTap: () => {},
                          trailing: const Badge(label: Text("3")),
                        ),
                        ListItem(
                          title: "Activity",
                          onTap: () => {},
                          icon: Icons.notifications_outlined,
                          trailing: const Badge(label: Text("3")),
                        ),
                      ])),
                )));
  }
}
