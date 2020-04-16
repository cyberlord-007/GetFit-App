import 'package:flutter/material.dart';
import 'HomePage.dart';


void main() => runApp(BMIcalculator());

class  BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xFF090C22),
      scaffoldBackgroundColor: Color(0xFF090C22)
      ),
      home: HomePage(),
    );
  }
}

