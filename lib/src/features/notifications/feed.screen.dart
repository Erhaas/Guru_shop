import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/features/baseview.dart';

@RoutePage()
class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
            Scaffold(
                backgroundColor: Theme.of(context).colorScheme.background,
                body: const Center(
                    child: SingleChildScrollView(
                  child: Placeholder(),
                ))));
  }
}
