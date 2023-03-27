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
      debugShowCheckedModeBanner: false,
      title: 'Projeto Quiero café',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Quiero Café'),
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
  int _itens = 0;

  void _addItensCart() {
    setState(() {
      _itens++;
    });
  }

  void _deleteItensCart() {
    setState(() {
      _itens--;
    });
  }

  void _resetItensCart() {
    setState(() {
      _itens = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;

    double sizeStarVertical =  widthScreen * 0.085;
    double sizeStarHorizontal = widthScreen * 0.05;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: widthScreen * 0.94,
                height: widthScreen > heightScreen ? heightScreen * 0.3 : heightScreen * 0.25,
                // color: Colors.grey,
                child: Row(
                  children: [
                    
                    Container(
                      width: widthScreen > heightScreen ? widthScreen * 0.27 : widthScreen * 0.5,
                      height: widthScreen > heightScreen ? heightScreen * 0.3 : heightScreen * 0.25,
                      // color: Colors.yellow,
                      decoration: widthScreen > heightScreen ?
                      const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/quiero_cafe_image.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20
                          )),
                          boxShadow:  [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                  -5,
                                  3
                              ),
                              blurRadius: 3,
                              spreadRadius: 2,
                            )
                          ]
                        )
                        :
                      const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/quiero_cafe_image.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20
                          )),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                  -5,
                                  3
                              ),
                              blurRadius: 3,
                              spreadRadius: 2,
                            )
                          ]
                      ),
                    ),
                    Container(
                      padding: heightScreen > widthScreen ?
                      const EdgeInsets.fromLTRB(0, 2, 0, 0)
                          :
                      const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      width: heightScreen > widthScreen ? widthScreen * 0.43 : widthScreen * 0.663,
                      height: heightScreen > widthScreen ? heightScreen * 0.24 : widthScreen * 0.14,
                      // color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: heightScreen > widthScreen ? widthScreen * 0.427 : widthScreen * 0.66,
                                height: heightScreen > widthScreen ? heightScreen * 0.07 : widthScreen * 0.05,
                                // color: Colors.yellow,
                                child: const Text(
                                  'Coffee black',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: heightScreen > widthScreen ? const EdgeInsets.all(0) : const EdgeInsets.all(0),
                                width: heightScreen > widthScreen ? widthScreen * 0.427 : widthScreen * 0.66,
                                height: heightScreen > widthScreen ? heightScreen * 0.155 : widthScreen * 0.08,
                                // color: Colors.teal,
                                child: heightScreen > widthScreen ?
                                Column(
                                  children: [
                                    Row(
                                      textDirection: TextDirection.ltr,
                                      children: [
                                        Icon(Icons.star,
                                          color: Colors.yellowAccent,
                                          size: sizeStarVertical,
                                        ),
                                        Icon(Icons.star,
                                          color: Colors.yellowAccent,
                                          size: sizeStarVertical,
                                        ),
                                        Icon(Icons.star,
                                          color: Colors.yellowAccent,
                                          size: sizeStarVertical,
                                        ),
                                        Icon(Icons.star,
                                          color: Colors.yellowAccent,
                                          size: sizeStarVertical,
                                        ),
                                        Icon(Icons.star,
                                          color: Colors.black12,
                                          size: sizeStarVertical,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          width: widthScreen * 0.42,
                                          height: heightScreen * 0.11,
                                          // color: Colors.indigoAccent,
                                          child: Text(
                                            "This is a good coffee.\nCoffee with milk and sugar",
                                            style: TextStyle(
                                              fontSize: widthScreen * 0.04,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ),
                                      ],
                                    )
                                  ],
                                ) // Name of food, stars and description - vertical
                                :
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          textDirection: TextDirection.ltr,
                                          children: [
                                            Icon(Icons.star,
                                              color: Colors.yellowAccent,
                                              size: widthScreen * 0.05 ,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellowAccent,
                                              size: widthScreen * 0.05 ,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellowAccent,
                                              size: widthScreen * 0.05 ,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.yellowAccent,
                                              size: widthScreen * 0.05 ,
                                            ),
                                            Icon(Icons.star,
                                              color: Colors.black12,
                                              size: widthScreen * 0.05 ,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          // padding: EdgeInsets.fromLTRB(0, top, right, bottom),
                                          // color: Colors.indigoAccent,
                                          child: Text(
                                            "This is a good coffee.\nCoffee with milk and sugar",
                                            style: TextStyle(
                                              fontSize: widthScreen * 0.03,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        )
                                      ],
                                    )
                                  ],
                                )// Name of food, stars and description - horizontal
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: widthScreen * 0.94,
                height: widthScreen > heightScreen ? heightScreen * 0.46 : heightScreen * 0.6,
                // color: Colors.red,
                padding: const EdgeInsets.fromLTRB(2, 9, 2, 4),
                child: widthScreen > heightScreen ?
                Column(
                  children: [
                    Stack(
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: widthScreen * 0.92,
                          height: heightScreen * 0.28 ,
                          // color: Colors.pink,
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset('assets/quiero_cafe_logo.png',
                                        height: heightScreen * 0.172,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Text("The best coffee of Brazil!",
                                        textDirection: TextDirection.ltr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text("You needs this coffee!",
                                        textDirection: TextDirection.ltr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text("You needs this coffee!You needs this coffee!You needs this coffee!",
                                        textDirection: TextDirection.ltr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text("You needs this coffee!",
                                        textDirection: TextDirection.ltr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: widthScreen * 0.92,
                          height: heightScreen * 0.14,
                          // color: Colors.teal,
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.attach_money_outlined,
                                      color: Colors.lightGreen,
                                      size: 30,
                                    ),
                                    Text(
                                      "8,90",
                                      style: TextStyle(
                                          fontSize: 30
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _itens == 0 ?
                              [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                                    border: Border.all(
                                      color: Colors.black,
                                    ),
                                  ),
                                  child: TextButton(
                                    onPressed: _addItensCart,
                                    child: const Text("Add to cart",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                    ),
                                  )
                                )
                              ]
                                :
                              [
                                TextButton(
                                    onPressed: () => _deleteItensCart(),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    )
                                ),
                                Text('$_itens'),
                                TextButton(
                                    onPressed: () => _addItensCart(),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    )
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                                    border: Border.all(
                                        color: Colors.black,
                                    ),
                                  ),
                                  child: TextButton(
                                      onPressed: _resetItensCart,
                                      child: const Text("Purchase",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 20
                                        ),
                                      )
                                  ),
                                ),
                              ]
                            ),
                          ],
                        ),
                        ),
                      ],
                    ),
                  ],
                )// Price and buttons - horizontal
                    :
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: widthScreen * 0.9 ,
                          height: heightScreen * 0.4,
                          // color: Colors.yellowAccent,
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset('assets/quiero_cafe_logo.png',
                                          height: heightScreen * 0.07,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Text("The best coffee of Brazil!",
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 23
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Text("You needs this coffee!",
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Text("You needs this coffee!You need",
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Text("You needs this coffee!You needs this coffee!",
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: const [
                                        Text("You needs this coffee!",
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: widthScreen * 0.9 ,
                          height: heightScreen * 0.18,
                          padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.attach_money_outlined,
                                        color: Colors.lightGreen,
                                        size: 30,
                                      ),
                                      Text(
                                        "8,90",
                                        style: TextStyle(
                                            fontSize: 30
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Row(
                                       children: [
                                         Container(
                                           child: _itens == 0 ? 
                                           Row(
                                             children: [
                                               Container(
                                                 decoration: BoxDecoration(
                                                   borderRadius: const BorderRadius.all(Radius.circular(20)),
                                                   border: Border.all(
                                                     color: Colors.black,
                                                   ),
                                                 ),
                                                 child: TextButton(
                                                     onPressed: _addItensCart,
                                                     child: const Text("Add to cart",
                                                       style: TextStyle(
                                                         color: Colors.black,
                                                       ),
                                                     )
                                                 ),
                                               ),
                                             ],
                                           )
                                               :
                                           Column(
                                             children: [
                                               Row(
                                                 children: [
                                                   TextButton(
                                                       onPressed: () => _deleteItensCart(),
                                                       child: const Icon(
                                                         Icons.remove,
                                                         color: Colors.black,
                                                       )
                                                   ),
                                                   Text('$_itens'),
                                                   TextButton(
                                                       onPressed: () => _addItensCart(),
                                                       child: const Icon(
                                                         Icons.add,
                                                         color: Colors.black,
                                                       )
                                                   )
                                                 ],
                                               ),
                                               Row(
                                                 children: [
                                                   Container(
                                                     decoration: BoxDecoration(
                                                     borderRadius: const BorderRadius.all(Radius.circular(20)),
                                                     border: Border.all(
                                                       color: Colors.black,
                                                     ),
                                                     ),
                                                     child: TextButton(
                                                         onPressed: _resetItensCart,
                                                         child: const Text("Purchase",
                                                           style: TextStyle(
                                                             color: Colors.green,
                                                             fontSize: 20,
                                                           ),
                                                         )
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                             ],
                                           )
                                         )
                                       ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )// price and buttons - vertical
              ),
            ],
          ),
        ],
      )
    );
  }
}
