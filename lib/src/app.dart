import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:guru_shop/src/core/routes/router.dart';
import 'package:guru_shop/src/locator.dart';
import 'package:guru_shop/src/shared/utils/theme/themes.dart';
import 'package:guru_shop/src/core/viewmodels/product_viewmodel.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => locator<ProductViewModel>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: lightThemeCustom(),
        routerConfig: appRouter.config(),
      ),
    );
  }
}
