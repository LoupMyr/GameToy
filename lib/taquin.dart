import 'dart:math';

class Taquin {
  List<int> _grille = List.generate(9, (index) => index);

  List<int> getGrille() {
    return this._grille;
  }

  void generateGrille() {
    this._grille = [1, 2, 3, 4, 5, 0, 7, 8, 6];
  }

  void setGrille(nvGrille) {
    this._grille = nvGrille;
  }

  bool checkVoisin(int id) {
    bool result = false;
    try {
      if (this._grille[id - 1] == 0) {
        result = true;
      }
    } catch (e) {}
    try {
      if (this._grille[id + 1] == 0) {
        result = true;
      }
    } catch (e) {}
    try {
      if (this._grille[id + 3] == 0) {
        result = true;
      }
    } catch (e) {}
    try {
      if (this._grille[id - 3] == 0) {
        result = true;
      }
    } catch (e) {}
    return result;
  }

  int findZero() {
    int indice = 0;
    for (int i = 0; i <= this._grille.length - 1; i++) {
      if (this._grille[i] == 0) {
        indice = i;
      }
    }
    return indice;
  }

  void deplacement(int id) {
    if (checkVoisin(id)) {
      this._grille[findZero()] = this._grille[id];
      this._grille[id] = 0;
    }
  }

  bool partieFinie() {
    bool finis = false;
    if (this._grille == [1, 2, 3, 4, 5, 6, 7, 8, 0]) {
      finis = true;
    }
    return finis;
  }
}
