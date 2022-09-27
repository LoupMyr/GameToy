import 'dart:math';

class Taquin {
  List<int> _grille = List.generate(9, (index) => index);

  List<int> getGrille() {
    return this._grille;
  }

  void generateGrille() {
    this._grille = [0, 1, 2, 3, 4, 5, 6, 7, 8];
    var rdm = Random();
    for (int i = 0; i < this._grille.length - 1; i++) {
      int nb = rdm.nextInt(9);
      int nb2 = rdm.nextInt(9);
      int tmp = this._grille[nb];
      this._grille[nb] = this._grille[nb2];
      this._grille[nb2] = tmp;
    }
    int zero = findZero();
    this._grille[zero] = this._grille[this._grille.length - 1];
    this._grille[this._grille.length - 1] = 0;
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
    if (this._grille[0] == 1 &&
        this._grille[1] == 2 &&
        this._grille[2] == 3 &&
        this._grille[3] == 4 &&
        this._grille[4] == 5 &&
        this._grille[5] == 6 &&
        this._grille[6] == 7 &&
        this._grille[7] == 8 &&
        this._grille[8] == 0) {
      finis = true;
    }
    return finis;
  }
}
