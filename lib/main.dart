import 'package:flutter/material.dart';
import 'package:tour/login.dart';
import 'package:tour/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisate',
      theme: ThemeData(),
      home: const LoginScreen(),
    );
  }
}