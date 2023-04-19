import 'export_pages.dart';
import 'package:flutter/material.dart';

import 'model/export_number.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int? randomNumber;

  Text _rowText1() {
    return const Text(
      "Número da loteria",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 50),);
  }

  Text _rowText2() {
    return Text(
      randomNumber != null ? "$randomNumber" : "clique no botão",
      style: const TextStyle(
        fontSize: 30,
        backgroundColor: Colors.deepPurple,
        color: Colors.white,
      ),
    );
  }

  FloatingActionButton _fab() {
    return FloatingActionButton(
      onPressed: _generateNewNumber,
      tooltip: "Random number",
      key: const Key("button_send_new_number"),
      child: const Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text("Número randômico",),
        ),
        body: Column(
          children: [
            _rowText1(),
            _rowText2(),
          ],
        ),
      floatingActionButton: _fab()
    );
  }

  @override
  void initState() {
    print("init state");
  }

  @override
  void dispose() {
    print("dispose");
  }

  int  _generateNumber() {
    return Number.generateRandomNumber();
  }

  _generateNewNumber() {
    setState(() {
      randomNumber = _generateNumber();
      print("novo número:");
      _sendSnackBar();
    });
  }
  _sendSnackBar() {
    final snackBar = SnackBar(content: Text("novo número: $randomNumber"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}