import 'package:flutter/material.dart';

final List<Color> color = <Color>[
  Colors.green,
  Colors.black,
  Colors.orange,
  Colors.red,
  Colors.yellow,
  Colors.blue,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0});
  ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: color[selectedColor],
    );
  }
}
