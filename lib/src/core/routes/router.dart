import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:guru_shop/src/core/routes/layouts/bottom_nav_wrapper.dart';
import 'package:guru_shop/src/features/home/home_screen.dart';
import 'package:guru_shop/src/features/home/product_list_screen.dart';
import 'package:guru_shop/src/features/login/login_screen.dart';
import 'package:guru_shop/src/features/register/register_screen.dart';
import 'package:guru_shop/src/features/search/search.screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(
          page: RegisterRoute.page,
        ),
        AutoRoute(
          page: ProductListRoute.page,
        ),
        AutoRoute(page: BottomNavRouteWrapper.page, initial: true, children: [
          AutoRoute(
            page: HomeRoute.page,
          ),
          AutoRoute(
            page: SearchRoute.page,
          )
        ])
      ];
}
