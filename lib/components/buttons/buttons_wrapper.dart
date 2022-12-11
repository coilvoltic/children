import 'package:children/components/buttons/theme_button.dart';

import 'package:flutter/material.dart';

class ButtonsWrapper extends StatelessWidget {
  const ButtonsWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      margin: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          ThemeButton(),
        ],
      ),
    );
  }
}