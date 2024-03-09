import 'package:flutter/material.dart';
import 'package:restaurant/pages/home.dart';

void main() {
  runApp(const CountPeople());
}

class CountPeople extends StatelessWidget {
  const CountPeople({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de Cliente',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: false,
      ),
      home: const HomePage(title: 'Controle de Acesso de Cliente'),
    );
  }
}
