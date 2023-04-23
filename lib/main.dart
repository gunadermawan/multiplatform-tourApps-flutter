import 'package:flutter/material.dart';

import 'detail_screen.dart';

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
      home: const DetailScreen(),
    );
  }
}

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text('${numberList[index]}',
                  style: const TextStyle(fontSize: 50)),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
