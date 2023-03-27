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
          title: const Text("My appBar"),
        ),
        body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.deepPurpleAccent,
            height: 101,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(Icons.connected_tv_sharp),
                Icon(Icons.connected_tv_sharp),
                Icon(Icons.connected_tv_sharp),
              ],
            ),
          )),
          Expanded(child: Container(
            color: Colors.pink,
            height: 101,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.accessible_forward_rounded, color: Colors.white),
                Icon(Icons.accessible_forward_rounded, color: Colors.white),
                Icon(Icons.accessible_forward_rounded, color: Colors.white),
              ],
            ),
          )),
          Expanded(child: Container(
            color: Colors.amber,
            height: 101,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.satellite_outlined, color: Colors.red,),
                Icon(Icons.satellite_outlined, color: Colors.red,),
                Icon(Icons.satellite_outlined, color: Colors.red,),
              ],
            ),
          )),
          Expanded(child: Container(
            color: Colors.black26,
            height: 101,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.insert_emoticon_rounded, color: Colors.white,),
                Icon(Icons.insert_emoticon_rounded, color: Colors.white,),
                Icon(Icons.insert_emoticon_rounded, color: Colors.white,),
              ],
            ),
          )),
          Expanded(child: Container(
            color: Colors.lightGreen,
            height: 101,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.camera_alt_outlined, color: Colors.purple,),
                Icon(Icons.camera_alt_outlined, color: Colors.purple,),
                Icon(Icons.camera_alt_outlined, color: Colors.purple,),
              ],
            ),
          )),
          Expanded(child: Container(
            color: Colors.purple,
            height: 101,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.accessibility_rounded, color: Colors.white54,),
                Icon(Icons.accessibility_rounded, color: Colors.white54,),
                Icon(Icons.accessibility_rounded, color: Colors.white54,),
              ],
            ),
          )),
        ],
      )
    ),
   );
  }
}
