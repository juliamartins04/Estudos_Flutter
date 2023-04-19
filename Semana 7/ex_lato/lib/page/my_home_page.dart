import 'export_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget column1TextStyle() {
    return Text("hi i'am lato - BY LATO FONTEEEEEE",
      style: TextStyle(
        fontFamily: "Lato"
      )
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          column1TextStyle(),
          Text("Hi i am normal font")
        ],
      )
    );
  }
}
