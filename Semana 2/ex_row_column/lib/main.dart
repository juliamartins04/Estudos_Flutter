import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout row/column',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout row/column'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              color: Colors.teal,
              width: 30,
              height: 30,
              child: Icon(
                Icons.ice_skating
              ),
            ),
            Container(
              color: Colors.red,
              width: 30,
              height: 30,
            ),
            Container(
              color: Colors.greenAccent,
              width: 30,
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
