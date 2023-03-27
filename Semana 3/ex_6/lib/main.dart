import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    final _heigth = MediaQuery.of(context).size.height;

    BoxDecoration myBoxDecoration({required Color color}) {
      return BoxDecoration(
        border: Border.all(color: Colors.black),
        color: color,
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: _heigth * 0.09,
                        width: _width * 0.10,
                        decoration: myBoxDecoration(color: Colors.black38),
                        // decoration: BoxDecoration(
                        //   color: Colors.black38,
                        //   border: Border.all(),
                        // ),
                      ),
                      Container(
                        height: _heigth * 0.13,
                        width: _width * 0.10,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          border: Border.all(),
                        ),
                        child: const Center(
                          child: Icon(Icons.construction_outlined)
                        ),
                      ),
                      Container(
                        height: _heigth * 0.13,
                        width: _width * 0.10,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          border: Border.all(),
                        ),
                        child: const Center(
                            child: Icon(Icons.add_a_photo_sharp)
                        ),
                      ),
                      Container(
                        height: _heigth * 0.13,
                        width: _width * 0.10,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          border: Border.all(),
                        ),
                        child: const Center(
                            child: Icon(Icons.accessible_forward)
                        ),
                      ),
                      Container(
                        height: _heigth * 0.13,
                        width: _width * 0.10,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          border: Border.all(),
                        ),
                        child: const Center(
                            child: Icon(Icons.account_circle_outlined)
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: _heigth * 0.09,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text("Backlog"),
                            ),
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   Container(
                                     height: _heigth * 0.04,
                                     width: _width * 0.06,
                                     color: Colors.teal,
                                   ),
                                   Container(
                                     height: _heigth * 0.04,
                                     width: _width * 0.06,
                                     color: Colors.teal,
                                   ),
                                 ],
                               ),
                               Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   Container(
                                     height: _heigth * 0.04,
                                     width: _width * 0.06,
                                     color: Colors.teal,
                                   ),
                                   Container(
                                     height: _heigth * 0.04,
                                     width: _width * 0.06,
                                     color: Colors.teal,
                                   ),
                                 ],
                               ),


                             ],
                            )
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: _heigth * 0.09,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text("A fazer"),
                            ),
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )

                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )

                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )

                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )

                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: _heigth * 0.09,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text("Fazendo"),
                            ),
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: _heigth * 0.09,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text("Em revisão"),
                            ),
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )

                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: _heigth * 0.09,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              border: Border.all(),
                            ),
                            child: const Center(
                              child: Text("Feito!"),
                            ),
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),


                                ],
                              )
                          ),
                          Container(
                            height: _heigth * 0.13,
                            width: _width * 0.17,
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              border: Border.all(),
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                      Container(
                                        height: _heigth * 0.04,
                                        width: _width * 0.06,
                                        color: Colors.teal,
                                      ),
                                    ],
                                  ),
                                ],
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
