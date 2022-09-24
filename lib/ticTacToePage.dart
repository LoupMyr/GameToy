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

  void _cliquer(int id) {
    setState(() {
      if (!_plateau.partieFinis()) {
        _plateau.placerChoix(id);
        _text = Text("C'est au tour du joueur ${_plateau.tourJoueur()}");
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jeu du Tic Tac Toe'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _cliquer(0),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(printGrille(0),
                        style: TextStyle(color: setCouleur(0), fontSize: 50)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _cliquer(1),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(printGrille(1),
                        style: TextStyle(color: setCouleur(1), fontSize: 50)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _cliquer(2),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(printGrille(2),
                        style: TextStyle(color: setCouleur(2), fontSize: 50)),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _cliquer(3),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(printGrille(3),
                        style: TextStyle(color: setCouleur(3), fontSize: 50)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _cliquer(4),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(printGrille(4),
                        style: TextStyle(color: setCouleur(4), fontSize: 50)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _cliquer(5),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(printGrille(5),
                        style: TextStyle(color: setCouleur(5), fontSize: 50)),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _cliquer(6),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(printGrille(6),
                        style: TextStyle(color: setCouleur(6), fontSize: 50)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _cliquer(7),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(printGrille(7),
                        style: TextStyle(color: setCouleur(7), fontSize: 50)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _cliquer(8),
                  child: Container(
                    width: 100,
                    height: 100,
                    alignment: Alignment.center,
                    child: Text(printGrille(8),
                        style: TextStyle(color: setCouleur(8), fontSize: 50)),
                  ),
                ),
              ],
            ),
            _text,
            const Padding(padding: EdgeInsets.all(20)),
          ],
        ),
      ),
    );
  }
}
