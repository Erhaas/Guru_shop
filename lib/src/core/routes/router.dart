import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guru_shop/src/core/routes/layouts/bottom_nav_wrapper.dart';
import 'package:guru_shop/src/features/cart/cart.screen.dart';
import 'package:guru_shop/src/features/home/favorite_product_screen.dart';
import 'package:guru_shop/src/features/home/home_screen.dart';
import 'package:guru_shop/src/features/home/product_list_screen.dart';
import 'package:guru_shop/src/features/login/login_screen.dart';
import 'package:guru_shop/src/features/notifications/activity.screen.dart';
import 'package:guru_shop/src/features/notifications/feed.screen.dart';
import 'package:guru_shop/src/features/notifications/notifications.screen.dart';
import 'package:guru_shop/src/features/notifications/offer.screen.dart';
import 'package:guru_shop/src/features/product_details/product_details_screen.dart';
import 'package:guru_shop/src/features/product_reviews/product_reviews_screen.dart';
import 'package:guru_shop/src/features/register/register_screen.dart';
import 'package:guru_shop/src/features/search/search.screen.dart';
import 'package:guru_shop/src/features/settings/setting_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: BottomNavRouteWrapper.page, initial: true, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: SearchRoute.page),
          AutoRoute(page: CartRoute.page)
        ]),
        AutoRoute(page: ProductListRoute.page),
        AutoRoute(page: FavoriteProductRoute.page),
        AutoRoute(page: ProductDetailsRoute.page),
        AutoRoute(page: ProductReviewsRoute.page),

        // Notification screens
        AutoRoute(page: NotificationsRoute.page),
        AutoRoute(page: ActivityRoute.page),
        AutoRoute(page: FeedRoute.page),
        AutoRoute(page: OfferRoute.page)
      ];
}
