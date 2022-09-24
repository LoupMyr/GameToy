class TicTacToe {
  List<String> _grille = List.generate(9, (index) => " ");
  int _tour = 0;

  List<String> getGrille() {
    return this._grille;
  }

  int getTour() {
    return this._tour;
  }

  void setGrile(nvGrille) {
    this._grille = nvGrille;
  }

  void setTour(nbTour) {
    this._tour = nbTour;
  }

  String tourJoueur() {
    String result = "X";
    if (this._tour % 2 == 0) {
      result = "O";
    }
    return result;
  }

  bool estLibre(int id) {
    bool result = true;
    if (this._grille[id] != " ") {
      result = false;
    }
    return result;
  }

  void placerChoix(int id) {
    if (estLibre(id) && !partieFinis()) {
      this._grille[id] = tourJoueur();
      this._tour++;
    }
  }

  bool partieFinis() {
    bool result = false;
    if (this._grille[0] == this._grille[1] &&
        this._grille[0] == this._grille[2] &&
        this._grille[0] != " ") {
      result = true;
    } else if (this._grille[3] == this._grille[4] &&
        this._grille[3] == this._grille[5] &&
        this._grille[3] != " ") {
      result = true;
    } else if (this._grille[6] == this._grille[7] &&
        this._grille[6] == this._grille[8] &&
        this._grille[6] != " ") {
      result = true;
    } else if (this._grille[0] == this._grille[3] &&
        this._grille[0] == this._grille[6] &&
        this._grille[0] != " ") {
      result = true;
    } else if (this._grille[1] == this._grille[4] &&
        this._grille[1] == this._grille[7] &&
        this._grille[1] != " ") {
      result = true;
    } else if (this._grille[2] == this._grille[5] &&
        this._grille[2] == this._grille[8] &&
        this._grille[2] != " ") {
      result = true;
    } else if (this._grille[0] == this._grille[4] &&
        this._grille[0] == this._grille[8] &&
        this._grille[0] != " ") {
      result = true;
    } else if (this._grille[2] == this._grille[4] &&
        this._grille[2] == this._grille[6] &&
        this._grille[2] != " ") {
      result = true;
    }
    return result;
  }

  String getGagnant() {
    String gagnant = " ";
    if (partieFinis()) {
      if (this._grille[0] == this._grille[1] &&
          this._grille[0] == this._grille[2]) {
        gagnant = this._grille[0];
      } else if (this._grille[3] == this._grille[4] &&
          this._grille[3] == this._grille[5]) {
        gagnant = this._grille[3];
      } else if (this._grille[6] == this._grille[7] &&
          this._grille[6] == this._grille[8]) {
        gagnant = this._grille[6];
      } else if (this._grille[0] == this._grille[3] &&
          this._grille[0] == this._grille[6]) {
        gagnant = this._grille[0];
      } else if (this._grille[1] == this._grille[4] &&
          this._grille[1] == this._grille[7]) {
        gagnant = this._grille[1];
      } else if (this._grille[2] == this._grille[5] &&
          this._grille[2] == this._grille[8]) {
        gagnant = this._grille[2];
      } else if (this._grille[0] == this._grille[4] &&
          this._grille[0] == this._grille[8]) {
        gagnant = this._grille[0];
      } else if (this._grille[2] == this._grille[4] &&
          this._grille[2] == this._grille[6]) {
        gagnant = this._grille[2];
      }
    }
    return gagnant;
  }
}
