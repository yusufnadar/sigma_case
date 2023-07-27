import 'package:flutter/material.dart';

import '../../../pages/bottomNavBar/view/bottom_nav_bar_view.dart';
import '../../../pages/profile/view/profile_view.dart';
import '../../base/model/people_model.dart';
import '../../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  NavigationRoute._init();

  static final NavigationRoute _instance = NavigationRoute._init();

  static NavigationRoute get instance => _instance;

  Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case NavigationConstants.bottomBar:
        return MaterialPageRoute(
          builder: (context) => const BottomNavBarView(),
          settings: RouteSettings(arguments: args),
        );
      case NavigationConstants.profile:
        return MaterialPageRoute(
          builder: (context) => ProfileView(person: args as PeopleModel),
          settings: RouteSettings(arguments: args),
        );
    }
    return null;
  }
}
