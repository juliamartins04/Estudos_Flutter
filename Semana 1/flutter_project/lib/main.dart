import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  String name = "Júlia";

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text('Question'),
            ),
            child: Center(
              child: CupertinoButton(
                child: Text(
                  'My name is $name? Click here...',
                  style: CupertinoTheme
                      .of(context)
                      .textTheme
                      .actionTextStyle
                      .copyWith(fontSize: 32),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) {
                        return PagePerson();
                      })
                  );
                },
              ),

            ),

        );
      },
    );
  }
}

class PagePerson extends StatelessWidget {

  String name = "Júlia";

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (context) {
        return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text('Response'),
            ),
            child: Center(
              child: CupertinoButton(
                child: Text(
                  'OHH YEAAHH, My name is $name',
                  style: CupertinoTheme
                      .of(context)
                      .textTheme
                      .actionTextStyle
                      .copyWith(fontSize: 32),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      CupertinoPageRoute(builder: (context) {
                        return HomeScreen();
                      })
                  );
                },
              ),
            )
        );
      },
    );
  }
}