import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Equation extends StatelessWidget {
  const Equation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * Constants.equationRatio / Constants.sumOfRatios,
    );
  }
}
