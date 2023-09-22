import 'package:flutter/material.dart';
import 'package:project/screens/first_screen.dart';
import 'package:project/screens/second_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}