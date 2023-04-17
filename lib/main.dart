import 'package:flutter/material.dart';

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
      home: const ScrollScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Farm House Lembang',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                )),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text('Open Everyday')
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text('Open Everyday')
                    ],
                  ),
                  Column(
                    children: const <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text('Open Everyday')
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
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
      ),
    );
  }
}
