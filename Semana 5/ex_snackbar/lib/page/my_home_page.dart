import 'export_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: OutlinedButton(
            onPressed: () => _sendSnackBar(),
            child: const Text("Show SnackBar"),
          ),
        )
    );
  }

  _sendSnackBar() {
    final snackBar = SnackBar(
      action: SnackBarAction(
        label: "Cancel",
        onPressed: () => _dismissSnack(),
      ),
      duration: const Duration(seconds: 3),
      content: const Text("olá snackbar :)"),
    );

    //ScaffoldMessenger - context
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  _dismissSnack() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

}
