import 'package:flutter/material.dart';
import 'export_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // variável

  final mock = MockModel();

  Container _container({required int index}) {
    return Container(
        height: 360,
        color: Colors.red[mock.colorCodes[index]],
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(mock.entries[index]),
            )
        )
    );
  }

  ListView _listView() {
    return ListView.builder(
        padding: EdgeInsets.all(5.0),
        itemCount: mock.entries.length,
        itemBuilder: (BuildContext context, int index) {
          return _container(index: index);
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview"),
        ),
        body: _listView()
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: Text("Listview"),
  //       ),
  //       body: ListView(
  //         children: [
  //           Container(
  //             color: Colors.deepPurple,
  //             height: 350,
  //             width: double.infinity,
  //           ),
  //           Container(
  //             color: Colors.redAccent,
  //             height: 350,
  //             width: double.infinity,
  //           ),
  //           Container(
  //             color: Colors.teal,
  //             height: 350,
  //             width: double.infinity,
  //           ),
  //         ],
  //       )
  //   );
  // }
}
