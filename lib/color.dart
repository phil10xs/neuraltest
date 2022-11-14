import 'package:flutter/material.dart';

Color color = const Color(0xff16F581);

ThemeData? theme(BuildContext context) => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: const TextTheme(
        bodyText2: TextStyle(
          fontFamily: 'Rubik',
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
        ),
      ),
      fontFamily: 'Rubik',
      primaryColor: color,
      backgroundColor: Colors.white,
    );
