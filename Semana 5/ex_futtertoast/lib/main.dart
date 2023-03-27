import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterToast',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'fluttertoast'),
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () => _sendToast(message: 'funcionouu', textSize: 30),
              child: const Text("Show toast")
          ),
          TextButton(
              onPressed: () => _sendToast(message: "deu certo"),
              child: const Text('show toast')
          ),
          ElevatedButton(
              onPressed: () {
                var snackBar = SnackBar(content: Text("I am here"));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("Show snack bar message")
          ),
        ],
      )
    );
  }

  _sendToast({required String message, double? textSize = 20}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        fontSize: textSize,
        textColor: Colors.pink
    );
  }
}
