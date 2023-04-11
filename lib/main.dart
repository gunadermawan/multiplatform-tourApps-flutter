import 'package:flutter/material.dart';
import 'package:tour/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisate',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}


