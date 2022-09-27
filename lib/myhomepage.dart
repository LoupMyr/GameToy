import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/splashScreen.dart';
import 'package:flutter_application_2/ticTacToePage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  SplashScreenState createState() => SplashScreenState();
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GameToy'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 19, 186, 236),
                Color.fromARGB(255, 0, 11, 110),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
                width: 100,
                child: FlutterLogo(),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              const Text(
                'Bienvenue sur GameToy, selectionner votre jeu ici !',
                style: TextStyle(fontSize: 25),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Color.fromARGB(0, 0, 0, 0))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/routeTicTacToe');
                    },
                    child: Container(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.file(File(
                            '/home/eleve/Documents/projets Flutter/GameToy/lib/assets/tictactoe.png')),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Color.fromARGB(0, 0, 0, 0))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/routeTaquin');
                    },
                    child: Container(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.file(File(
                            '/home/eleve/Documents/projets Flutter/GameToy/lib/assets/taquin.png')),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
