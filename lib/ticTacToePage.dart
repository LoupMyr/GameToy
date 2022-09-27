import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/tictactoe.dart';

class TicTacToePage extends StatefulWidget {
  const TicTacToePage({super.key, required this.title});

  final String title;

  @override
  State<TicTacToePage> createState() => TicTacToePageState();
}

class TicTacToePageState extends State<TicTacToePage> {
  TicTacToe _plateau = new TicTacToe();
  Text _text = const Text('');

  void cliquer(int id) {
    setState(() {
      if (!_plateau.partieFinis()) {
        _plateau.placerChoix(id);
        _text = Text("C'est au tour du joueur ${_plateau.tourJoueur()}");
      }
      if (_plateau.getTour() == 9 && !_plateau.partieFinis()) {
        printEgalite();
        _text = const Text("Egalité");
      }
      if (_plateau.partieFinis()) {
        printGagnant();
        _text = Text("Le gagnant est ${_plateau.getGagnant()}");
      }
    });
  }

  Color setCouleur(int id) {
    Color couleur = Colors.red;
    if (_plateau.getGrille()[id] == "O") {
      couleur = Colors.orange;
    }
    return couleur;
  }

  Future<String?> printEgalite() {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Fin de partie!'),
        content: const Text('Egalité !'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Ok'),
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }

  Future<String?> printGagnant() {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Fin de partie!'),
        content: Text('Victoire du joueur ${_plateau.getGagnant()}'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Ok'),
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }

  String printGrille(int id) {
    return _plateau.getGrille()[id];
  }

  void reset() {
    _plateau.resetPlateau();
    setState(() {
      for (int i = 0; i < _plateau.getGrille().length - 1; i++) {
        printGrille(i);
      }
      _text = Text("C'est au tour du joueur ${_plateau.tourJoueur()}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jeu du Tic Tac Toe'),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Le jeu du TicTacToe', style: TextStyle(fontSize: 50)),
              const Text(
                'Aligner 3 croix ou ronds avant votre adversaire pour gagner !',
                style: TextStyle(fontSize: 15),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => cliquer(0),
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(printGrille(0),
                          style: TextStyle(color: setCouleur(0), fontSize: 50)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  ElevatedButton(
                    onPressed: () => cliquer(1),
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(printGrille(1),
                          style: TextStyle(color: setCouleur(1), fontSize: 50)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  ElevatedButton(
                    onPressed: () => cliquer(2),
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(printGrille(2),
                          style: TextStyle(color: setCouleur(2), fontSize: 50)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                ],
              ),
              const Padding(padding: EdgeInsets.all(8)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => cliquer(3),
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(printGrille(3),
                          style: TextStyle(color: setCouleur(3), fontSize: 50)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  ElevatedButton(
                    onPressed: () => cliquer(4),
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(printGrille(4),
                          style: TextStyle(color: setCouleur(4), fontSize: 50)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  ElevatedButton(
                    onPressed: () => cliquer(5),
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(printGrille(5),
                          style: TextStyle(color: setCouleur(5), fontSize: 50)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                ],
              ),
              const Padding(padding: EdgeInsets.all(8)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => cliquer(6),
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(printGrille(6),
                          style: TextStyle(color: setCouleur(6), fontSize: 50)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  ElevatedButton(
                    onPressed: () => cliquer(7),
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(printGrille(7),
                          style: TextStyle(color: setCouleur(7), fontSize: 50)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                  ElevatedButton(
                    onPressed: () => cliquer(8),
                    child: Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: Text(printGrille(8),
                          style: TextStyle(color: setCouleur(8), fontSize: 50)),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.all(8)),
                ],
              ),
              _text,
              const Padding(padding: EdgeInsets.all(20)),
              ElevatedButton(
                  onPressed: reset, child: const Text('Nouvelle partie')),
            ],
          ),
        ),
      ),
    );
  }
}
