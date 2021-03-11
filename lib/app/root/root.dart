import 'package:flutter/material.dart';
import 'package:flutter_project_template/app_config/constants.dart';
import 'package:flutter_project_template/routing/app_router.dart';
import 'package:flutter_project_template/state/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Root extends StatelessWidget {
  static const String routeName = "/root";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('root'),
      ),
      body: Column(
        children: [
          Consumer(
            builder: (context, watch, child) {
              final method = watch(userLogInNotifier).logInMethod;
              return IconButton(
                icon: Icon(Icons.logout),
                onPressed: () async {
                  print(await method);
                  context.read(userLogInNotifier).logout(LogInMethods.none);
                  _navigateToLogIn(context);
                },
                splashRadius: 27,
              );
            },
          ),
        ],
      ),
    );
  }

  void _navigateToLogIn(BuildContext context) {
    Future.delayed(Duration(milliseconds: 0), () {
      Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.login, (Route<dynamic> route) => false);
    });
  }
}
