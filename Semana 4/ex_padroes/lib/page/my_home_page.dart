import 'export_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // Widgets em cima

  Widget column1Text() {
    return const Text("My first text",
    style: TextStyle(
      fontSize: 30,
      color: Colors.pink
    ),
    );
  }

  Widget column2Text() {
    return const Text("My second text",
    style: TextStyle(
      fontSize: 30,
      color: Colors.teal,
    ),
    );
  }

  Widget column3Container() {
    return Container(
      height: 30,
      width: 140,
      color: Colors.lightBlue,
      child: const Text('my container',
      style: TextStyle(
        fontSize: 20
      ),
      ),
    );
  }

  Widget myFloatingActionButton() {
    return FloatingActionButton.extended(
      onPressed: sendMessage,
      label: const Text("my button"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            children: [
              column1Text(),
              column2Text(),
              column3Container(),
            ],
          ),
        ),

      floatingActionButton: myFloatingActionButton()
    );

  }

  // Métodos em baixo
  sendMessage() => print("click");

}