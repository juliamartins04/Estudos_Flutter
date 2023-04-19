import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'export_pages.dart';

class MyHomePage extends StatelessWidget {

  // final String htmlcode = """
  //    <h1>H1 Title</h1>
  //    <h2>H2 Title</h2>
  //       <p>A paragraph with <strong>bold</strong> and <u>underline</u> text.</p>
  //       <ol>
  //         <li>List 1</li>
  //         <li>List 2<ul>
  //             <li>List 2.1 (nested)</li>
  //             <li>List 2.2</li>
  //            </ul>
  //         </li>
  //         <li>Three</li>
  //       </ol>
  //    <a href="https://www.hellohpc.cdom">Link to HelloHPC.com</a>
  //    <img src='https://www.hellohpc.com/wp-content/uploads/2020/05/flutter.png'/>
  //   """;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("my app"),
        ),
        body: HtmlWidget(
                  '''
          <h3>Heading</h3>
          <p>
            A paragraph with <strong>strong</strong>, <em>emphasized</em>
            and <span style="color: red">colored</span> text.
          </p>
          ''',
          customStylesBuilder: (element) {
            if (element.classes.contains('foo')) {
              return {'color': 'red'};
            }
            return null;
          },
          onErrorBuilder: (context, element, error) => Text('$element error: $error'),
          onLoadingBuilder: (context, element, loadingProgress) => CircularProgressIndicator(),
          renderMode: RenderMode.column,
          textStyle: TextStyle(fontSize: 14),
          // webView: true,
        ),

    );
  }
}