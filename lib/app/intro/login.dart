import 'package:flutter/material.dart';
import 'package:flutter_project_template/app_config/constants.dart';
import 'package:flutter_project_template/common_widgets/c_widgets.dart';
import 'package:flutter_project_template/routing/app_router.dart';
import 'package:flutter_project_template/state/app_state.dart';
import 'package:flutter_project_template/utils/device/device_utils.dart';
import 'package:flutter_project_template/utils/locale/app_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogInScreen extends StatelessWidget {
  static const String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: DeviceUtils.getScaledHeight(context, 0.05),
          horizontal: DeviceUtils.getScaledWidth(context, 0.1),
        ),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context).translate('login_title'),
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            LogInMethodBtn(
              text: 'Log in with Google',
              imageAsset: Assets.googleLogo,
              bkColor: AppColors.googleColor,
              onPress: () {
                context.read(userLogInNotifier).login(LogInMethods.google);
                _navigateToRoot(context);
              },
            ),
            SizedBox(height: DeviceUtils.getScaledHeight(context, 0.015)),
            LogInMethodBtn(
              text: 'Log in with Facebook',
              imageAsset: Assets.fbLogo,
              bkColor: AppColors.fbColor,
              onPress: () {
                context.read(userLogInNotifier).login(LogInMethods.fb);
                _navigateToRoot(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.language_rounded),
              onPressed: () {
                _buildLanguageDialog(context);
              },
              splashRadius: 27,
            ),
            Consumer(
              builder: (context, watch, child) {
                final themeIsDark = watch(themeNotifier.state);
                final themeNotify = context.read(themeNotifier);
                return IconButton(
                  icon: themeIsDark ? Icon(Icons.wb_sunny_rounded) : Icon(Icons.nightlight_round),
                  //color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                  onPressed: () {
                    //changes theme to the opposite of what it was
                    themeNotify.changeBrightnessToDark(!themeIsDark);
                  },
                  splashRadius: 27,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToRoot(BuildContext context) {
    Future.delayed(Duration(milliseconds: 0), () {
      Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.root, (Route<dynamic> route) => false);
    });
  }

  _showDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then<void>((T value) {
      // The value passed to Navigator.pop() or null.
    });
  }

  _buildLanguageDialog(BuildContext context) {
    _showDialog<String>(
      context: context,
      child: Consumer(
        builder: (context, watch, child) {
          final language = watch(langNotifier.state);
          final locales = context.read(langNotifier);
          return SimpleDialog(
            title: Text(
              AppLocalizations.of(context).translate('home_choose_language'),
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1.color,
                fontSize: 16.0,
              ),
            ),
            children: locales.supportedLanguages
                .map(
                  (object) => ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text(
                      object.language,
                      style: TextStyle(
                        color: language == object.locale
                            ? Theme.of(context).textTheme.bodyText1.color
                            : Theme.of(context).iconTheme.color.withOpacity(0.3),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      // change user language based on selected locale
                      locales.changeLanguage(object.locale);
                    },
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}

class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem({
    Key key,
    this.icon,
    this.color,
    @required this.text,
    @required this.onPress,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
