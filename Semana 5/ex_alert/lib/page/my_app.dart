// import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'export_page.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: Asuka.builder,
      // navigatorObservers: [
      //   Asuka.asukaHeroController //This line is needed for the Hero widget to work
      // ],
      title: 'exemplo alert',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'exemplo alert'),
    );
  }
}