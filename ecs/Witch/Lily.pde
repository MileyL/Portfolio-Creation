class Lily {
  int x, y;
  PImage lily;

  Lily() {
    x = width/2;
    y = height-100;
    lily = loadImage("Witch(1)(1)(1).gif");
  }

  void display() {
    imageMode(CENTER);
    image(lily, x, y);
  }

  void move(char dir) {
    if (dir == 'w') {
      y = y - 40;
    } else if (dir == 'a') {
      x = x - 40;
    } else if (dir == 's') {
      y = y + 40;
    } else if (dir == 'd') {
      x = x + 40;
    }
  }
}
