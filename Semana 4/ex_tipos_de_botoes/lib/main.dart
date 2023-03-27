import 'dart:developer';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true
      ),
      home: const MyHomePage(title: 'Flutter tipos de botoes'),
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

  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextButton(
              onPressed: null,
              key: Key('lib_main_button_save'),
              child: Text("on pressed null")
          ),
          TextButton(
              onPressed: sendSimplePrint,
              key: Key('lib_main_botton_edit'),
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 15),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white
              ),
              child: const Padding(
                  padding: EdgeInsets.all(5),
                child: Text('Enabled'),
              )
          ),
          TextButton.icon(
              onPressed: sendSimplePrint,
              key: const Key('lib_main_botton_3'),
              icon: const Icon(Icons.add),
              label: const Text("TextButton.icon"),
          ),
          OutlinedButton(
              onPressed: () => sendPrint("oi"),
              key: const Key('lib_main_botton_4'),
              child: const Text("OutlinedButton")
          ),
          IconButton(
              onPressed: incrementVolume,
              key: const Key('lib_main_botton_5'),
              icon: const Icon(Icons.arrow_upward_outlined)
          ),
          Text(
              "Volume: $_volume",
              key: const Key('lib_main_text_1'),
          ),
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.yellow,
              shape: CircleBorder()
            ),
            child: IconButton(
              icon: const Icon(Icons.sunny),
              key: const Key('lib_main_botton_6'),
              onPressed: sendSimplePrint,
            ),
          ),
          ElevatedButton(
              onPressed: sendSimplePrint,
              key: const Key('lib_main_botton_7'),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 10),
                backgroundColor: Colors.teal
              ),
              child: const Text("ElevatedButton")
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("small"),
              SizedBox(height: 5,),
              FloatingActionButton.small(
                  onPressed: sendSimplePrint,
                  child: Icon(Icons.accessible_forward_rounded),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("normal"),
              SizedBox(height: 05,),
              FloatingActionButton(
                onPressed: sendSimplePrint,
                child: Icon(Icons.accessible_forward_rounded),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("large"),
              SizedBox(height: 5,),
              FloatingActionButton.large(
                onPressed: sendSimplePrint,
                child: Icon(Icons.accessible_forward_rounded),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("extended"),
              SizedBox(height: 5,),
              FloatingActionButton.extended(
                onPressed: sendSimplePrint,
                label: Icon(Icons.accessible_forward_rounded),
              ),
            ],
          )
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: sendSimplePrint,
      //   backgroundColor: Colors.lightBlueAccent,
      //   child: Icon(Icons.add_a_photo),
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: sendSimplePrint,
        backgroundColor: Colors.teal,
        icon: Icon(Icons.thumb_up),
        label: Text("Like"),
      ),
    );
  }

  incrementVolume() => setState(() {_volume += 2;});

  sendSimplePrint() => print("clicou");
  sendPrint(String message) => print(message);

}
