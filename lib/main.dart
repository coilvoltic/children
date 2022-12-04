import 'package:children/components/background.dart';
import 'package:children/components/buttons/theme_button.dart';
import 'package:children/components/choices.dart';
import 'package:children/components/header.dart';
import 'package:children/components/equation.dart';
import 'package:children/notifiers/theme_notifier.dart';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Children());
}

class Children extends StatelessWidget {
  const Children({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeNotifier>(
          create: (_) => ThemeNotifier(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const Calculation(),
      ),
    );
  }
}

class Calculation extends StatelessWidget {
  const Calculation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      const Background(),
        Column(
          children: const [
            Header(),
            Equation(),
            Choices()
          ],
        ),
        const ThemeButton(),
      ],
    );
  }
}
