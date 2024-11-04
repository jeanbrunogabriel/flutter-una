import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ),
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Página Inicial'),
      ),
      body: Center(
        child: Image.asset('assets/giphy.webp'), 
      ),
    );
  }
}
