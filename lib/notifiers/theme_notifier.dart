import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ThemeNotifier extends ChangeNotifier {

  MainTheme _mainTheme = MainTheme.light;

  void changeMainTheme()
  {
    _mainTheme == MainTheme.light ? 
      _mainTheme = MainTheme.dark :
      _mainTheme = MainTheme.light;
    notifyListeners();
  }

  MainTheme getMainTheme() => _mainTheme;

}