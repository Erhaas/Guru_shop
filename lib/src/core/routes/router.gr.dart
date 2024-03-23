// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ActivityRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ActivityScreen(),
      );
    },
    BottomNavRouteWrapper.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavScreenWrapper(),
      );
    },
    FavoriteProductRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteProductScreen(),
      );
    },
    FeedRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FeedScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationsScreen(),
      );
    },
    OfferRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OfferScreen(),
      );
    },
    ProductDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailsRouteArgs>(
          orElse: () =>
              ProductDetailsRouteArgs(productId: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductDetailsScreen(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    ProductListRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductListRouteArgs>(
          orElse: () => ProductListRouteArgs(
                category: pathParams.getString('id'),
                title: pathParams.getString('title'),
              ));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductListScreen(
          key: args.key,
          category: args.category,
          title: args.title,
        ),
      );
    },
    ProductReviewsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductReviewsRouteArgs>(
          orElse: () =>
              ProductReviewsRouteArgs(productId: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductReviewsScreen(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
    SettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingScreen(),
      );
    },
  };
}

/// generated route for
/// [ActivityScreen]
class ActivityRoute extends PageRouteInfo<void> {
  const ActivityRoute({List<PageRouteInfo>? children})
      : super(
          ActivityRoute.name,
          initialChildren: children,
        );

  static const String name = 'ActivityRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomNavScreenWrapper]
class BottomNavRouteWrapper extends PageRouteInfo<void> {
  const BottomNavRouteWrapper({List<PageRouteInfo>? children})
      : super(
          BottomNavRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavRouteWrapper';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteProductScreen]
class FavoriteProductRoute extends PageRouteInfo<void> {
  const FavoriteProductRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteProductRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FeedScreen]
class FeedRoute extends PageRouteInfo<void> {
  const FeedRoute({List<PageRouteInfo>? children})
      : super(
          FeedRoute.name,
          initialChildren: children,
        );

  static const String name = 'FeedRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationsScreen]
class NotificationsRoute extends PageRouteInfo<void> {
  const NotificationsRoute({List<PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OfferScreen]
class OfferRoute extends PageRouteInfo<void> {
  const OfferRoute({List<PageRouteInfo>? children})
      : super(
          OfferRoute.name,
          initialChildren: children,
        );

  static const String name = 'OfferRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductDetailsScreen]
class ProductDetailsRoute extends PageRouteInfo<ProductDetailsRouteArgs> {
  ProductDetailsRoute({
    Key? key,
    required String productId,
    List<PageRouteInfo>? children,
  }) : super(
          ProductDetailsRoute.name,
          args: ProductDetailsRouteArgs(
            key: key,
            productId: productId,
          ),
          rawPathParams: {'id': productId},
          initialChildren: children,
        );

  static const String name = 'ProductDetailsRoute';

  static const PageInfo<ProductDetailsRouteArgs> page =
      PageInfo<ProductDetailsRouteArgs>(name);
}

class ProductDetailsRouteArgs {
  const ProductDetailsRouteArgs({
    this.key,
    required this.productId,
  });

  final Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailsRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [ProductListScreen]
class ProductListRoute extends PageRouteInfo<ProductListRouteArgs> {
  ProductListRoute({
    Key? key,
    required String category,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          ProductListRoute.name,
          args: ProductListRouteArgs(
            key: key,
            category: category,
            title: title,
          ),
          rawPathParams: {
            'id': category,
            'title': title,
          },
          initialChildren: children,
        );

  static const String name = 'ProductListRoute';

  static const PageInfo<ProductListRouteArgs> page =
      PageInfo<ProductListRouteArgs>(name);
}

class ProductListRouteArgs {
  const ProductListRouteArgs({
    this.key,
    required this.category,
    required this.title,
  });

  final Key? key;

  final String category;

  final String title;

  @override
  String toString() {
    return 'ProductListRouteArgs{key: $key, category: $category, title: $title}';
  }
}

/// generated route for
/// [ProductReviewsScreen]
class ProductReviewsRoute extends PageRouteInfo<ProductReviewsRouteArgs> {
  ProductReviewsRoute({
    Key? key,
    required String productId,
    List<PageRouteInfo>? children,
  }) : super(
          ProductReviewsRoute.name,
          args: ProductReviewsRouteArgs(
            key: key,
            productId: productId,
          ),
          rawPathParams: {'id': productId},
          initialChildren: children,
        );

  static const String name = 'ProductReviewsRoute';

  static const PageInfo<ProductReviewsRouteArgs> page =
      PageInfo<ProductReviewsRouteArgs>(name);
}

class ProductReviewsRouteArgs {
  const ProductReviewsRouteArgs({
    this.key,
    required this.productId,
  });

  final Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductReviewsRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingScreen]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
