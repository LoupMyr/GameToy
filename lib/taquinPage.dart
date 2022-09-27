import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/taquin.dart';

class TaquinPage extends StatefulWidget {
  const TaquinPage({super.key, required this.title});

  final String title;

  @override
  State<TaquinPage> createState() => TaquinPageState();
}

class TaquinPageState extends State<TaquinPage> {
  final Taquin _tableau = new Taquin();

  void cliquer(int id) {
    setState(() {
      _tableau.deplacement(id);
      finPartie();
    });
  }

  Color findColor(id) {
    Color c = Colors.blue;
    if (_tableau.getGrille()[id] == 0) {
      c = Colors.white;
    }
    return c;
  }

  void finPartie() {
    setState(() {
      if (_tableau.partieFinie()) {
        printFin();
      }
    });
  }

  void reset() {
    setState(() {
      _tableau.generateGrille();
    });
  }

  String affichage(int id) {
    String texte = _tableau.getGrille()[id].toString();
    if (_tableau.getGrille()[id] == 0) {
      texte = ' ';
    }
    return texte;
  }

  Future<String?> printFin() {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Fin de partie!'),
        content: const Text('Félicitation, vous avez réussi !'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Ok'),
            child: const Text('Ok'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jeu du taquin'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Le jeu du Taquin', style: TextStyle(fontSize: 50)),
          const Text(
            'Essayer de remettre les chiffres dans le bon ordre !',
            style: TextStyle(fontSize: 15),
          ),
          const Text(
            'Utilisez vous le bouton sous la grille pour en générer une nouvelle !',
            style: TextStyle(fontSize: 15),
          ),
          const Padding(padding: EdgeInsets.all(20)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => cliquer(0),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => findColor(0)),
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(affichage(0),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
              ElevatedButton(
                onPressed: () => cliquer(1),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => findColor(1))),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(affichage(1),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
              ElevatedButton(
                onPressed: () => cliquer(2),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => findColor(2))),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(affichage(2),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => cliquer(3),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => findColor(3))),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(affichage(3),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
              ElevatedButton(
                onPressed: () => cliquer(4),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => findColor(4))),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(affichage(4),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
              ElevatedButton(
                onPressed: () => cliquer(5),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => findColor(5))),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(affichage(5),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => cliquer(6),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => findColor(6))),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(affichage(6),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
              ElevatedButton(
                onPressed: () => cliquer(7),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => findColor(7))),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(affichage(7),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
              ElevatedButton(
                onPressed: () => cliquer(8),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => findColor(8))),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text(affichage(8),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 50)),
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.all(20)),
          IconButton(
            onPressed: () => reset(),
            icon: const Icon(Icons.restart_alt_outlined, size: 50),
          ),
        ],
      )),
    );
  }
}
