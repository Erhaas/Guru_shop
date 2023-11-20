import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/shared/utils/theme/themes.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return Provider(
      create: (BuildContext context) => "",
      child: MaterialApp.router(
        theme: lightThemeCustom(),
        routerConfig: appRouter.config(),
      ),
    );
  }
}
