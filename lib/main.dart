import 'package:flutter/material.dart';
import 'package:flutter_application_2/Presentation/Screens/home_screen.dart';
import 'package:flutter_application_2/Theme/AppTheme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).theme,
      home: HomeScreen(),
    );
  }
}
