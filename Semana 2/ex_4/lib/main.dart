import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My appBar in My App"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(child: Container(
                  color: Colors.purple,
                  height: 200,
                )),
              ],
            ),
            Row(
              children: [
                Expanded(child: Container(
                  color: Colors.lightGreen,
                  height: 150,
                )),
                Expanded(child: Container(
                  color: Colors.red,
                  height: 150,
                )),
                Expanded(child: Container(
                  color: Colors.pink,
                  height: 150,
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.yellow,
                  height: 230,
                  width: 185,
                ),
                Container(
                  color: Colors.cyanAccent,
                  height: 230,
                  width: 185,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.teal,
                  height: 110,
                  width: 90,
                ),
                Container(
                  color: Colors.deepOrangeAccent,
                  height: 110,
                  width: 90,
                ),
                Container(
                  color: Colors.black45,
                  height: 110,
                  width: 90,
                ),
                Container(
                  color: Colors.lightGreenAccent,
                  height: 110,
                  width: 90,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
