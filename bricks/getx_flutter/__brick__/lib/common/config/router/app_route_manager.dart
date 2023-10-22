import 'package:get/get.dart';

import '../../../features/splash/view/splash.dart';
import '../bindings/splash_bindings.dart';
import 'app_routes.dart';

class AppRouteManager {
  static List<GetPage> pages = [
    GetPage(
        name: AppRoutes.splash,
        page: () => const Splash(),
        binding: SplashBindings())
  ];
}
