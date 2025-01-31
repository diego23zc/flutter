import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usando API de Pokemon'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: FlutterLogo(),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Logo de flutter'),
          ],
        ),
      ),
    );
  }
}
