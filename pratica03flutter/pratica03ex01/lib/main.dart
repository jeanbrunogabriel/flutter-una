import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int numeroVezes = 0;
  String mensagem =
      "Número de vezes em que o botão foi pressionado: 0.\nEsse número é par";

  void cliqueDoBotao() {
    setState(() {
      numeroVezes += 1;
      mensagem =
          "Número de vezes em que o botão foi pressionado: $numeroVezes.\nEsse número é ${numeroVezes % 2 == 0 ? "par" : "ímpar"}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mensagem),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: cliqueDoBotao,
        child: const Icon(Icons.add),
      ),
    );
  }
}
