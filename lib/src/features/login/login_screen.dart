import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/gen/assets.gen.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/core/viewmodels/login_viewmodel.dart';
import 'package:guru_shop/src/features/baseview.dart';
import 'package:guru_shop/src/shared/components/button.dart';
import 'package:guru_shop/src/shared/components/input.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                            'Welcome to Guru Shop',
                            style: textTheme.titleSmall,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 28),
                          child: Text(
                            'Sign in to continue',
                            style: textTheme.bodyMedium!
                                .copyWith(color: colorScheme.secondary),
                          ),
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
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0)),
                        SizedBox(
                          width: double.infinity,
                          child: Button(
                            text: "Sign In",
                            bgColor: colorScheme.primary,
                            color: colorScheme.surface,
                            onPressed: () =>
                                {router.push(const BottomNavRouteWrapper())},
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: colorScheme.secondaryContainer,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16),
                              child: Text("OR",
                                  style: textTheme.bodyMedium!
                                      .copyWith(color: colorScheme.secondary)),
                            ),
                            Expanded(
                              child: Divider(
                                color: colorScheme.secondaryContainer,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Button(
                            textStyle: textTheme.bodyLarge!,
                            prefix: Assets.icons.googleIcon.svg(),
                            text: "Login with Google",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0, bottom: 15),
                          child: SizedBox(
                            width: double.infinity,
                            child: Button(
                              textStyle: textTheme.bodyLarge,
                              prefix: Assets.icons.facebookIcon.svg(),
                              text: "Login with Facebook",
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => {},
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Forgot Password?',
                              style: textTheme.bodyMedium!
                                  .copyWith(color: colorScheme.primary),
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: () => {router.push(const RegisterRoute())},
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                text: TextSpan(
                                  text: "Don't have a account? ",
                                  style: textTheme.bodyMedium,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Register',
                                      style: textTheme.bodyMedium!
                                          .copyWith(color: colorScheme.primary),
                                    ),
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
