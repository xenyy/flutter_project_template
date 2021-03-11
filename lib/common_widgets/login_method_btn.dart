import 'package:flutter/material.dart';
import 'package:flutter_project_template/utils/device/device_utils.dart';

class LogInMethodBtn extends StatelessWidget {
  const LogInMethodBtn({
    Key key,
    @required this.text,
    @required this.bkColor,
    @required this.imageAsset,
    @required this.onPress,
  }) : super(key: key);

  final String text;
  final Color bkColor;
  final String imageAsset;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceUtils.getScaledHeight(context, 0.06),
      width: DeviceUtils.getScaledWidth(context, 0.7),
      child: TextButton(
        onPressed: onPress,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(imageAsset),
          ],
        ),
        style: TextButton.styleFrom(
          elevation: 0,
          primary: Theme.of(context).colorScheme.background,
          backgroundColor: bkColor,
          padding: EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 10,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
