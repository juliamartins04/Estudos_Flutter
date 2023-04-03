import 'export_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    const double containerHeight = 200;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: containerHeight,
                width: double.infinity,
                color: Colors.greenAccent,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: containerHeight,
                width: double.infinity,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: containerHeight,
                width: double.infinity,
                color: Colors.amberAccent,
              ),
            ],
          ),
        )
    );
  }
}