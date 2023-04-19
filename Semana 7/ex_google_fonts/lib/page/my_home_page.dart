import 'package:google_fonts/google_fonts.dart';

import 'export_pages.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget column1TextStyle() {
    return Text("hi i'am lato - by Google Fontsss",
      style: GoogleFonts.lato(
          color: Colors.black,
          fontWeight: FontWeight.w700
      ),
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
            const Text("hi, i' am normal font"),
          ],
        )
    );
  }
}
