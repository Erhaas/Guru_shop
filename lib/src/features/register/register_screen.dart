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
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return BaseView(
        builder: (BuildContext context, LoginViewModel model, Widget? child) =>
            Scaffold(
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
                            style: textTheme.titleSmall,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 28),
                          child: Text(
                            'Create a new account',
                            style: textTheme.bodyMedium!.copyWith(
                                color: colorScheme.secondaryContainer),
                          ),
                        ),
                        const Input(
                          prefixe: Icon(Icons.person_outline),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, bottom: 20),
                          child: SizedBox(
                            width: double.infinity,
                            child: Button(
                              text: "Sign Up",
                              bgColor: colorScheme.primary,
                              color: colorScheme.surface,
                              onPressed: () =>
                                  {router.push(const BottomNavRouteWrapper())},
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: () => {router.push(const LoginRoute())},
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                text: TextSpan(
                                  text: "have a account? ",
                                  style: textTheme.bodyMedium,
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Sign In',
                                        style: textTheme.bodyMedium!.copyWith(
                                            color: colorScheme.primary)),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
