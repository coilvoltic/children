import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Choices extends StatelessWidget {
  const Choices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * Constants.choicesRatio / Constants.sumOfRatios,
    );
  }
}
