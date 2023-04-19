import 'package:flutter/material.dart';
import 'export_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final month = Month(10);



  TextField _monthImputText() {
    return TextField(
        decoration: const InputDecoration(
          hintText: "Digite o mês",
        ),
        key: const Key("input_month"),
        onChanged: (value) => _changeMounth(value)
    );
  }

  Text _checkMonthText() {
    return Text("${MonthCheck.checkMonth(month.varMonth)}", style: TextStyle(fontSize: 30),);
  }

  Text _checkText() {
    return Text("${month.varMonth ?? "mês não informado"}", style: TextStyle(fontSize: 30),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mês"),
        ),
        body: Column(
          children: [
            _monthImputText(),
            SizedBox(height: 30,),
            _checkText(),
            SizedBox(height: 30,),
            _checkMonthText(),
          ],
        )
    );
  }

  @override
  void initState() {
    super.initState();
    debugPrint("initState");
    // debugPrint("check month ${month.checkMonth()}");
  }


  @override
  void dispose() {
    debugPrint("dispose");
  }


  // métodos de serviço / regras de negócio...
  _changeMounth(String value) {
    debugPrint("Valor digitado pelo usuário: ${value}");
    setState(() {
      month.varMonth = int.tryParse(value);
    });
  }
}