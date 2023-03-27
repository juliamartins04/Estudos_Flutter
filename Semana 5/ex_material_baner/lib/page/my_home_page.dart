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
          child: ElevatedButton(
            onPressed: sendMaterialBanner,
            child: Text("show material banner"),
          ),
        )
    );
  }

  sendMaterialBanner() {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
          content: const Text(
              "hi, i' am your material banner",
              style: TextStyle(
                  fontSize: 15
              )),
          contentTextStyle: const TextStyle(
            color: Colors.black,
          ),
          backgroundColor: Colors.greenAccent,
          leadingPadding: const EdgeInsets.only(right: 30),
          leading: const Icon(Icons.warning),
          actions: [
            const TextButton(
                onPressed: null,
                child: Text("Cancel")
            ),
            TextButton(
                onPressed: () => ScaffoldMessenger.of(context).hideCurrentMaterialBanner(),
                child : const Text(
                  "Ok", style: TextStyle(
                  color: Colors.green
                ),)
            ),
          ]
      )
    );
  }
}