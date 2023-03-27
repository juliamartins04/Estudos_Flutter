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
              title: const Text("My AppBar"),
            ),
            body: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                      color: Colors.teal,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "HI",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.green,
                      height: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "HI",
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "HI",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  child: Container(
                      color: Colors.deepPurpleAccent,
                      height: 450,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "HI",
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "HI",
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "HI",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  child: Container(
                      color: Colors.greenAccent,
                      height: 700,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "HI",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "HI",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "HI",
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "HI",
                            style: TextStyle(
                              color: Colors.purpleAccent,
                              fontSize: 22,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            )));
  }
}
