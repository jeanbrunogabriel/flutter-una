import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: VolumeCalculator()));

class VolumeCalculator extends StatefulWidget {
  @override
  _VolumeCalculatorState createState() => _VolumeCalculatorState();
}

class _VolumeCalculatorState extends State<VolumeCalculator> {
  TextEditingController comprimentoController = TextEditingController();
  TextEditingController larguraController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  String resultado = "";

  void calcularVolume() {
    double comprimento = double.parse(comprimentoController.text);
    double largura = double.parse(larguraController.text);
    double altura = double.parse(alturaController.text);
    double volume = comprimento * largura * altura;

    setState(() {
      resultado = "Volume: ${volume.toStringAsFixed(2)} m³";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculadora de Volume")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: comprimentoController,
              decoration: const InputDecoration(
                labelText: 'Comprimento (m)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: larguraController,
              decoration: const InputDecoration(
                labelText: 'Largura (m)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(
                labelText: 'Altura (m)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calcularVolume,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text(
                'Calcular',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text(
              resultado,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
