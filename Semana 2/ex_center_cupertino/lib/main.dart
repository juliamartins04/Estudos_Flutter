import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('My navigation bar'),
      ),
      child: Column(
        children: const [
          Center(
            heightFactor: 2,
            child: Text("Júlia Martins",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: CupertinoColors.destructiveRed,
              fontSize: 39,
              decorationStyle: TextDecorationStyle.dashed
            )
            ),
          )
        ],
      ),
    );
  }
}