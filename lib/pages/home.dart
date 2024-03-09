import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementPeopleCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementPeopleCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(
            child: Text(
          widget.title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        )),
      ),
      body: Stack(
        children: [
          Image.asset(
            "images/bg_restaurante.jpg",
            fit: BoxFit.cover,
            height: 1000,
            alignment: Alignment.center,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Pessoas",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      backgroundColor: Color.fromRGBO(247, 247, 247, 0.7),
                      wordSpacing: 3),
                ),
                Text(
                  '$_counter',
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    backgroundColor: Color.fromRGBO(247, 247, 247, 0.7),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: _decrementPeopleCounter,
                        tooltip: 'Remover pessoal ao deixar o restaurante',
                        child: const Icon(Icons.remove),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(
                        onPressed: _incrementPeopleCounter,
                        tooltip: 'Adicionar pessoa ao entrar no Restaurant',
                        child: const Icon(Icons.add),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
