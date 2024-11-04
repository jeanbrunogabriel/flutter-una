import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Calculadora()));

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  String resultado = "";

  void calcular(String operacao) {
    double num1 = double.parse(num1Controller.text);
    double num2 = double.parse(num2Controller.text);
    double? res = 0;

    switch (operacao) {
      case '+':
        res = num1 + num2;
        break;
      case '-':
        res = num1 - num2;
        break;
      case '*':
        res = num1 * num2;
        break;
      case '/':
        res = num2 != 0 ? num1 / num2 : 0;
        break;
    }

    setState(() {
      resultado = "$num1 $operacao $num2 = $res";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculadora")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: num1Controller,
              decoration: const InputDecoration(labelText: 'Primeiro número'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: num2Controller,
              decoration: const InputDecoration(labelText: 'Segundo número'),
              keyboardType: TextInputType.number,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => calcular('+'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('-'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('*'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text('*'),
                ),
                ElevatedButton(
                  onPressed: () => calcular('/'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  child: Text('/'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(resultado, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
