// import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // criando alert

  Widget okButton() {
    return ElevatedButton(
      onPressed: () {
        print("clicou no ok");
        Navigator.of(context).pop();
      },
      child: Text("Ok")
    );
  }

  // criando alert
  Widget cancelButton() {
    return const ElevatedButton(
        onPressed: null,
        child: Text("cancel")
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
            ElevatedButton(
              onPressed: () => _sendMessage(context),// _sendAsukaAlert(),
              child: const Text("show alert"),
            ),
          ],
        )
    );
  }

  // _sendAsukaAlert() {
  //   AsukaSnackbar.alert("Alert").show();
  // }

  _sendMessage(BuildContext context) {
    print("clicou");

    // configurado alert
    AlertDialog alert = AlertDialog(
      title: const Text("Atenção"),
      content: const Text("Você está vendo essa mensagem em um alert"),
      icon: const Icon(Icons.warning),
      actions: [
        cancelButton(),
        okButton(),
      ],
    );

    //Exibir alert
    showDialog(
        barrierDismissible: false,
        // barrierColor: Colors.teal,
        context: context,
        builder: (BuildContext context) {
          return alert;
        }
    );
  }
}
