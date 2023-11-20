import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/button.dart';
import 'package:guru_shop/src/shared/components/input.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return BaseView(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
            Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              appBar: AppBar(
                  // leading: const Input(
                  //   prefixe: Icon(Icons.search),
                  //   placeholder: 'Search',
                  // ),
                  title: Text("SDFSDF"),
                  leadingWidth: 200,
                  centerTitle: false,
                  actions: [
                    Icon(
                      Icons.favorite,
                      size: 15,
                    ),
                    Icon(Icons.notifications)
                  ]),
              body: const Center(
                child: SingleChildScrollView(
                  child: Placeholder(),
                ),
              ),
            ));
  }
}
