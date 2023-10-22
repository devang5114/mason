import 'package:flutter/material.dart';

import '../../../features/splash/splash.dart';
import 'app_routes.dart';

class AppRouteManager {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (context) => const Splash());
      default:
        return MaterialPageRoute(
            builder: (context) => const Material(
                child: Center(child: Text('Something Went Wrong'))));
    }
  }
}
