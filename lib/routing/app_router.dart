import 'package:flutter/material.dart';
import 'package:flutter_project_template/app/intro/login.dart';
import 'package:flutter_project_template/app/root/favourite/favourite.dart';
import 'package:flutter_project_template/app/root/home/home.dart';

import 'package:flutter_project_template/app/root/root.dart';
import 'package:flutter_project_template/app/src.dart';

class AppRoutes {
  static const src = Source.routeName;

  static const login = LogInScreen.routeName;

  static const root = Root.routeName;
  static const home = HomeScreen.routeName;
  static const fav = FavScreen.routeName;

}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.src:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Source(),
        );
      case AppRoutes.login:
        return MaterialPageRoute<dynamic>(
          builder: (_) => LogInScreen(),
        );
      case AppRoutes.root:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Root(),
        );
      case AppRoutes.home:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomeScreen(),
        );
      case AppRoutes.fav:
        return MaterialPageRoute<dynamic>(
          builder: (_) => FavScreen(),
        );

      default:
      // TODO: Throw
        return null;
    }
  }
}