import 'app_bindings.dart';
import 'common/config/router/app_route_manager.dart';
import 'common/config/theme/app_theme.dart';
import 'common/config/theme/theme_export.dart';
import 'features/splash/view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => GetMaterialApp(
              getPages: AppRouteManager.pages,
              themeMode: ThemeMode.system,
              initialBinding: AppBiding(),
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              home: const Splash(),
            ));
  }
}
