import 'dart:math';

import 'package:children/constants/constants.dart';
import 'package:children/notifiers/theme_notifier.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:provider/provider.dart';

class ThemeButton extends StatefulWidget {
  const ThemeButton({Key? key}) : super(key: key);

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {

  Widget buildThemeButton(ThemeNotifier notifier, double gamePxSize) {
    return GestureDetector(
      onTap: () => setState(() {
        notifier.changeMainTheme();
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: Constants.animationDurationInMs),
        margin: EdgeInsets.only(
          right: gamePxSize / 20,
        ),
        width: 15 + gamePxSize / 12,
        height: 15 + gamePxSize / 12,
        decoration: BoxDecoration(
          color: notifier.getMainTheme() == MainTheme.light ? ThemeColors.background.getLightColor : ThemeColors.background.getDarkColor,
          borderRadius: BorderRadius.circular(gamePxSize / 30),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              offset: -Offset(gamePxSize/100, gamePxSize/100),
              color: notifier.getMainTheme() == MainTheme.light ? ThemeColors.tileBrightness.getLightColor : ThemeColors.tileBrightness.getDarkColor,
              inset: !(notifier.getMainTheme() == MainTheme.light),
            ),
            BoxShadow(
              blurRadius: 4.0,
              offset: Offset(gamePxSize/100, gamePxSize/100),
              color: notifier.getMainTheme() == MainTheme.light ? ThemeColors.tileShadow.getLightColor : ThemeColors.tileShadow.getDarkColor,
              inset: !(notifier.getMainTheme() == MainTheme.light),
            ),
          ]
        ),
        child: Icon(
          notifier.getMainTheme() == MainTheme.light ? Icons.dark_mode : Icons.light_mode,
          color: notifier.getMainTheme() == MainTheme.light ? ThemeColors.background.getDarkColor : ThemeColors.background.getLightColor,
          size: 7.8 + gamePxSize / 24,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Consumer<ThemeNotifier>(
      builder: (context, notifier, _) {
        
        final double height = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
        final double width  = MediaQuery.of(context).size.width;
        final double gamePxSize = min(min(width, height) / 1, height / 1.7);

        return buildThemeButton(notifier, gamePxSize);
      }
    );
  }
}