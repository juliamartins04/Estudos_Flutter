import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter app'),
        ),
        body: Column(
          children: const [
            Center(
              heightFactor: 3,
              child: Text('Júlia Martins',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 32,
                color: Colors.deepPurple,
                decorationStyle: TextDecorationStyle.dashed
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
