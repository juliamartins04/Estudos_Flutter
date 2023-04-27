import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String htmlCompleted =
  '''
    <html>
      <body>
      <h1 class="header1">Header 1</h1>
      <h1 class="header2">Header 2</h1>
      </body>
    </html>
  ''';


  String htmlScript =
  '''
  <div>
    <div style="text-align: justify;">
      <script>alert("oi");</script>
      <p>Olá, este é um html <br>bem legal.
      <span>feitooo!</span>
      </p>
    </div>
  </div>
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HTML by RegExp',),),
        body: Column(
          children: [
            Text(_removeHtmlWithRegExp(htmlCompleted), style: const TextStyle(fontSize: 27, color: Colors.teal),),
            Text(_removeHtmlCSSJSWithRegExp(htmlScript), style: const TextStyle(fontSize: 27, color: Colors.teal),),
          ],
        )
    );
  }

  String _removeHtmlWithRegExp(String html) {
    // Sanitização... remover tag html deixando somente o conteúdo
    RegExp expression = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return html.replaceAll(expression, "");
  }

  String _removeHtmlCSSJSWithRegExp(String html) {
    // Sanitização... remover tag html e script deixando somente o conteúdo
    RegExp expression = RegExp(r"<[^>]*>|&[^;]+", multiLine: true, caseSensitive: true);
    return html.replaceAll(expression, "");
  }
}
