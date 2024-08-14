import 'package:flutter/material.dart';

import '../presentation/pages/main_screen.dart';
import '../presentation/pages/splash_screen.dart';
import 'app_routes.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        return Builder(
          builder: (BuildContext context) {
            switch (settings.name) {
              case AppRoutes.splashScreen:
                return const SplashScreen();

              case AppRoutes.main:
                return const MainScreen();

              default:
                return const NamedRouteNotFound();
            }
          },
        );
      },
    );
  }
}

class NamedRouteNotFound extends StatelessWidget {
  const NamedRouteNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Check Named Route',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
