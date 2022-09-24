import 'dart:ffi';

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
  Taquin _tableau = new Taquin();
  String _t = '';

  void cliquer(int id) {
    setState(() {
      _tableau.deplacement(id);
      finPartie();
    });
  }

  void finPartie() {
    setState(() {
      if (_tableau.partieFinie()) {
        _t = "Partie finie";
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
        content: const Text('Félicition, vous avez réussi !'),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => cliquer(0), child: Text(affichage(0))),
              ElevatedButton(
                  onPressed: () => cliquer(1), child: Text(affichage(1))),
              ElevatedButton(
                  onPressed: () => cliquer(2), child: Text(affichage(2))),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => cliquer(3), child: Text(affichage(3))),
              ElevatedButton(
                  onPressed: () => cliquer(4), child: Text(affichage(4))),
              ElevatedButton(
                  onPressed: () => cliquer(5), child: Text(affichage(5))),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => cliquer(6), child: Text(affichage(6))),
              ElevatedButton(
                  onPressed: () => cliquer(7), child: Text(affichage(7))),
              ElevatedButton(
                  onPressed: () => cliquer(8), child: Text(affichage(8))),
            ],
          ),
          IconButton(
            onPressed: () => reset(),
            icon: const Icon(Icons.reset_tv),
          ),
        ],
      )),
    );
  }
}
