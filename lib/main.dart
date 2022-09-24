import 'package:flutter/material.dart';
import 'package:flutter_application_2/myhomepage.dart';
import 'package:flutter_application_2/taquinPage.dart';
import 'package:flutter_application_2/ticTacToePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GameToy',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'GameToy'),
        routes: <String, WidgetBuilder>{
          '/routeTicTacToe': (BuildContext context) =>
              const TicTacToePage(title: 'Jeu du TicTacToe'),
          '/routeTaquin': (BuildContext context) =>
              const TaquinPage(title: 'Jeu du Taquin'),
        });
  }
}
