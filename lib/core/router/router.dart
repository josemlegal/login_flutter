import 'package:flutter/material.dart';
import 'package:login_flutter/presentation/views.dart';

class Router {
  static const loginView = '/login-view';
  static const homeView = '/home-view';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return null;
    }
  }
}
