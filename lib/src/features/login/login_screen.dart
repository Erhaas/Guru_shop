import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/gen/assets.gen.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/button.dart';
import 'package:guru_shop/src/shared/components/input.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
            Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Assets.icons.logoBlue.svg(height: 72, width: 72),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          'Welcome to Guru Shop',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 28),
                        child: Text(
                          'Sign in to continue',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      const Input(
                        placeholder: 'Your Email',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Input(
                        placeholder: 'Password',
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0)),
                      SizedBox(
                        width: double.infinity,
                        child: Button(
                          text: "Sign In",
                          bgColor: Theme.of(context).colorScheme.primary,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "OR",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Button(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          prefix: Assets.icons.googleIcon.svg(),
                          text: "Google",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Button(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          prefix: Assets.icons.facebookIcon.svg(),
                          text: "Facebook",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
