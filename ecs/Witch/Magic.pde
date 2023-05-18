class Magic {
  int x, y, speed;
  PImage magic;

  Magic(int y) {
    x = width-100;
    this.y=y;
    speed=int(random(2, 5));
    magic = loadImage("magic.png");
  }

  void display() {
    imageMode(CENTER);
    image(magic, x, y);
  }

  void move(char dir) {
    if (dir == 'a') {
      x = x - speed;
      if (x<0) {
        x = width;
      }
    } else if (dir == 'd') {
      x = x + speed;
      if (x>width) {
        x = 0;
      }
    }
  }
}
