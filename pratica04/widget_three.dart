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
        child: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: const DecorationImage(
                  image: AssetImage('assets/landscape.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: const DecorationImage(
                  image: AssetImage('assets/landscape_two.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: "Exemplo de botão",
        child: Icon(Icons.add),
      ),
    );
  }
}
