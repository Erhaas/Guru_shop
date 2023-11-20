import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:guru_shop/src/core/routes/router.dart';

@RoutePage()
class BottomNavScreenWrapper extends StatelessWidget {
  const BottomNavScreenWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          SearchRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(label: '', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: '', icon: Icon(Icons.search)),
            ],
          );
        });
  }
}
