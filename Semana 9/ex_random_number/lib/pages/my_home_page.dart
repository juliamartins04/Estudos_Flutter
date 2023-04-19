import 'package:flutter/material.dart';
import '../model/export_number.dart';
import 'export_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int? randomNumber;

  Text rowText1() {
    return const Text(
      "Número da loteria",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 40.0
      ),
    );
  }

  Text rowText2() {
    return Text(
      randomNumber != null ? '$randomNumber' : 'clique no botão',
      style: const TextStyle(
          fontSize: 40.0,
          backgroundColor: Colors.deepPurple,
          color: Colors.white
      ),
    );
  }

  FloatingActionButton _fab() {
    return FloatingActionButton(
      onPressed: _sendNewNumber,
      tooltip: "Random Number",
      key: const Key("button_send_new_number"),
      child: Icon(Icons.add),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            rowText1(),
            rowText2(),
          ],
        ),
      floatingActionButton: _fab()
    );
  }

  @override
  void initState() {
    print("init state");
    // randomNumber = _generateNumber();
  }

  @override
  void dispose() {
    print("dispose");
  }

  // Rera de negócio
  int _generateNumber() {
    return Number.generateRandomNumber();
  }

  _sendNewNumber() {
    setState(() {
      randomNumber = _generateNumber();
      print(randomNumber);
    });
  }

  _sendSnackBar() {
    final snackBar = SnackBar(content: Text("novo número $randomNumber"));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
