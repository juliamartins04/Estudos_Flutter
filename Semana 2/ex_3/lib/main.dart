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
          title: const Text("My app barrrrr"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(child: Column(
                  children: [
                    Container(
                      color: Colors.deepOrange,
                      height: 100,
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    ),
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    ),
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    ),
                  ],
                )),
              ],
            ),
            Row(
              children: [
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                      color: Colors.purpleAccent,
                      height: 100,
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                ))
              ],
            ),
            Row(
              children: [
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                      color: Colors.blue,
                      height: 100,
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                ))
              ],
            ),
            Row(
              children: [
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                      color: Colors.green,
                      height: 100,
                    )
                  ],
                ))
              ],
            ),
            Row(
              children: [
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                      color: Colors.tealAccent,
                      height: 100,
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                ))
              ],
            ),
            Row(
              children: [
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                      color: Colors.pink,
                      height: 100,
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    )
                  ],
                ))
              ],
            ),
            Row(
              children: [
                Expanded(child: Column(
                  children: [
                    Container(
                      color: Colors.teal,
                      height: 100,
                    )
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    ),
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    ),
                  ],
                )),
                Expanded(child: Column(
                  children: [
                    Container(
                    ),
                  ],
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
