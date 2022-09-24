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
      body: Center(
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
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/routeTicTacToe');
                },
                child: const Text('Tic tac Toe')),
            const Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/routeTaquin');
                },
                child: const Text('Taquin')),
          ],
        ),
      ),
    );
  }
}
