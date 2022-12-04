import 'package:children/constants/constants.dart';
import 'package:children/notifiers/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, notifier, _) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: Constants.animationDurationInMs),
          color: notifier.getMainTheme() == MainTheme.light ? ThemeColors.background.light : ThemeColors.background.dark,
        );
      }
    );
  }
}