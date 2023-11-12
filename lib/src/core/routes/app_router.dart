import 'package:auto_route/auto_route.dart';
import 'package:guru_shop/src/features/login/login_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(page: LoginRoute.page, initial: true)];
}
