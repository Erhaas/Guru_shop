import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/gen/assets.gen.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/button.dart';
import 'package:guru_shop/src/shared/components/input.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);
    return BaseView(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
            Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Assets.icons.logoBlue.svg(height: 72, width: 72),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text(
                            'Let’s Get Started',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 28),
                          child: Text(
                            'Create an new account',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        const Input(
                          prefixe: Icon(Icons.mail_outlined),
                          placeholder: 'Full Name',
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Input(
                          prefixe: Icon(Icons.mail_outlined),
                          placeholder: 'Your Email',
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Input(
                          placeholder: 'Password',
                          prefixe: Icon(
                            Icons.lock_outlined,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Input(
                          placeholder: 'Password Again',
                          prefixe: Icon(
                            Icons.lock_outlined,
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0)),
                        SizedBox(
                          width: double.infinity,
                          child: Button(
                            text: "Sign Up",
                            bgColor: Theme.of(context).colorScheme.primary,
                            color: Theme.of(context).colorScheme.surface,
                            onPressed: () =>
                                {router.push(const BottomNavRouteWrapper())},
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: GestureDetector(
                              onTap: () => {router.push(const LoginRoute())},
                              child: RichText(
                                text: TextSpan(
                                  text: "have a account? ",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Sign In',
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                                  ],
                                ),
                              ),
                            )
                            // style: TextStyle(
                            //     color: Theme.of(context).colorScheme.primary)),
                            )
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
