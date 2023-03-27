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
      title: 'Flutter container padding box',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter container padding box'),
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

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: const EdgeInsets.all(20),
                color: Colors.brown,
                width: screenWidth,
                child: const Center(
                  child: Text(
                    'Título',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20),
                  ),
                )
              )
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 10,),
              Container(
                constraints: const BoxConstraints(
                  maxHeight: 100,
                  maxWidth: 90,
                  minHeight: 50,
                  minWidth: 40,
                ),
                padding: EdgeInsets.all(6),
                color: Colors.teal,
                child: const Text("A", style: TextStyle(fontSize: 50),),
              ),
              const SizedBox(width: 20,),
              Container(
                padding: EdgeInsets.all(6),
                color: Colors.green,
                child: const Text("C", style: TextStyle(fontSize: 50),),
              )
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.all(6),
                color: Colors.purple,
                child: const Text("B", style: TextStyle(fontSize: 50),),
              ),
              const SizedBox(width: 20,),
              Container(
                padding: EdgeInsets.all(6),
                color: Colors.pink,
                child: const Text("D", style: TextStyle(fontSize: 50),),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Image.network(
                        'https://imagens.mdig.com.br/thbs/45184mn.jpg',
                        width: 120
                    ),
                    Image.network(
                        'https://www.designerd.com.br/wp-content/uploads/2019/04/imagens-blogs-chamar-atencao-publico-fb.jpg',
                        width: 120,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 30,),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    'https://i0.wp.com/multarte.com.br/wp-content/uploads/2019/02/mickey-png-transparente7.png?fit=791%2C1024&ssl=1',
                ),
                fit: BoxFit.cover
              ),
              border: Border.all(
                color: Colors.lightGreen,
                width: 5
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(-15, 14),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(-5, 4),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ]
            ),
          )
        ],
      )
    );
  }
}
