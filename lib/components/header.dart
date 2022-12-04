import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * Constants.headerRatio / Constants.sumOfRatios,
      child: Center(
        child: Text("Calculs simples",
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            decoration: TextDecoration.none,
            // fontSize: MediaQuery.of(context).size.height,
            // fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
