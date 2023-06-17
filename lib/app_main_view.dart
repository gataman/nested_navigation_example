import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigation_example/utils/routes/app_router.dart';

@RoutePage()
class AppMainView extends StatelessWidget {
  const AppMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        ServiceRoute(),
        ProfileRoute(),
        UsersRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Service',
              icon: Icon(Icons.settings),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: 'Users',
              icon: Icon(Icons.people),
            ),
          ],
        );
      },
    );
  }
}
