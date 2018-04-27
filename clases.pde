interface luchador {
  void display();
}
class LAgua implements luchador {
  int atk;
  int def;
  int x, y;
  LAgua(int atk_, int def_, int x_, int y_) {
    atk=atk_;
    def=def_;
    x=x_;
    y=y_;
  }
  void display() {
    image(aguaImage, x, y,100,120);
  }
}

class LFuego implements luchador {
  int atk;
  int def;
  int x, y;
  LFuego(int atk_, int def_, int x_, int y_) {
    atk=atk_;
    def=def_;
    x=x_;
    y=y_;
  }
  void display() {
    image(fuegoImage, x, y,100,120);
  }
}

class LTierra implements luchador {
  int atk;
  int def;
  int x, y;
  LTierra(int atk_, int def_, int x_, int y_) {
    atk=atk_;
    def=def_;
    x=x_;
    y=y_;
  }
  void display() {
    image(tierraImage, x, y,100,120);
  }
}

class LAire implements luchador {
  int atk;
  int def;
  int x, y;
  LAire(int atk_, int def_, int x_, int y_) {
    atk=atk_;
    def=def_;
    x=x_;
    y=y_;
  }
  void display() {
    image(aireImage, x, y,100,120);
  }
}

class LRayo implements luchador {
  int atk;
  int def;
  int x, y;
  LRayo(int atk_, int def_, int x_, int y_) {
    atk=atk_;
    def=def_;
    x=x_;
    y=y_;
  }
  void display() {
    image(rayoImage, x, y,100,120);
  }
}
