import 'package:auto_route/auto_route.dart';

import '../../app_main_view.dart';
import '../../views/home_view/home_view.dart';
import '../../views/home_view/sub_views/sub1_view.dart';
import '../../views/home_view/sub_views/sub2_view.dart';
import '../../views/home_view/sub_views/sub3_view.dart';
import '../../views/profile_view.dart';
import '../../views/service_view.dart';
import '../../views/users_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        //AppMainView
        AutoRoute(
          page: AppMainRoute.page,
          initial: true,
          children: [
            //HomeView
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
              children: [
                //Sub1View
                AutoRoute(page: Sub1Route.page, initial: true),
                //Sub2View
                AutoRoute(page: Sub2Route.page),
                //Sub3View
                AutoRoute(page: Sub3Route.page),
              ],
            ),
            //ServiceView
            AutoRoute(page: ServiceRoute.page),
            //ProfileView
            AutoRoute(page: ProfileRoute.page),
            //UsersView
            AutoRoute(page: UsersRoute.page),
          ],
        ),
      ];
}
