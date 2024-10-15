import 'package:flutter/material.dart';
import 'package:taxian_super_admin_web/routes/routes.dart';

class RouteHelper {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoadingScreen.id:
        return MaterialPageRoute(
          builder: (context) => const LoadingScreen(),
        );
        case LoginScreen.id:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
