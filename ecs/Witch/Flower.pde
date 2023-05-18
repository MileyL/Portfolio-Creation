class Flower {
  int x, y;
  PImage Flower;

  Flower() {
    x = width/2;
    y = height-100;
    Flower = loadImage("flower.png");
  }

  void display() {
    imageMode(CENTER);
    image(Flower, x, y);
  }

  void move(int tempX, int tempY) {
    x = tempX;
    y = tempY;
  }
}
