import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Exercício 5 - by Welinton'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: _height > _width ? Colors.purpleAccent : Colors.cyan,
                width: _width * 0.5,
                height: _height > _width ? _height * 0.2 : _height * 0.777,
                child: const Center(
                  child: Text(
                    "Hi"
                  ),
                ),
              ),
              Container(
                color: _height > _width ? Colors.purpleAccent : Colors.cyan,
                width: _width * 0.5,
                height: _height > _width ? _height * 0.2 : _height * 0.777,
                child: const Center(
                  child: Text(
                    "Hi"
                  ),
                ),
              ),
            ],
          )
        ],
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
