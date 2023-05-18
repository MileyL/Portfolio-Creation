// Miley Lai | 25 April | Witch
boolean play;
Lily Lily;
Magic m1, m2, m3, m4;
Flower f1, f2, f3;
int score, lives;
float magic1Dist, magic2Dist, magic3Dist, magic4Dist, magic5Dist;

void setup() {
  size(1000, 800);
  score = 0;
  lives = 1;
  Lily = new Lily();
  m1 = new Magic(410);
  m2 = new Magic(410);
  m3 = new Magic(500);
  m4 = new Magic(500);
  f1 = new Flower();
  //f2 = new Flower();
  //f3 = new Flower();
  play = false;
  //bg = loadImage("bg.jpef");
}

void draw() {
  magic1Dist = dist(Lily.x, Lily.y, f1.x, f1.y);
  magic2Dist = dist(Lily.x, Lily.y, m1.x, m1.y);
  magic3Dist = dist(Lily.x, Lily.y, m2.x, m2.y);
  magic4Dist = dist(Lily.x, Lily.y, m3.x, m3.y);
  magic5Dist = dist(Lily.x, Lily.y, m4.x, m4.y);
  println(magic1Dist);
  if (!play) {
    startScreen();
  } else {
    background(#858995);
    drawBackground();
    infoPanel();
    f1.display();
    //f2.display();
    //f3.display();
    Lily.display();
    m1.display();
    m1.move('a');
    m2.display();
    m2.move('d');
    m3.display();
    m3.move('a');
    m4.display();
    m4.move('d');
    if (magic1Dist<50) {
      //gameOver();
      score = score + 5;
      f1.x = int(random(60, 500));
      f1.y = int(random(100, 600));
      //f1.x = width;
    }
    if (magic2Dist<50) {
      gameOver();
      lives = lives - 1;
      Lily.x = int(random(60, 500));
      Lily.y = int(random(100, 600));
      //f1.x = width;
    }
    if (magic3Dist<50) {
      gameOver();
      lives = lives - 1;
      Lily.x = int(random(60, 500));
      Lily.y = int(random(100, 600));
      //f1.x = width;
    }
    if (magic4Dist<50) {
      gameOver();
      lives = lives - 1;
      Lily.x = int(random(60, 500));
      Lily.y = int(random(100, 600));
      //f1.x = width;
    }
    if (magic5Dist<50) {
      gameOver();
      lives = lives - 1;
      Lily.x = int(random(60, 500));
      Lily.y = int(random(100, 600));
      //f1.x = width;
    }

    if (Lily.y>height || Lily.x < 0 || Lily.x > width || Lily.y < 0) {
      gameOver();
    }
  }
}
void keyPressed() {
  if (key == 'w') {
    Lily.move('w');
  } else if (key == 'a') {
    Lily.move('a');
  } else if (key == 's') {
    Lily.move('s');
  } else if (key == 'd') {
    Lily.move('d');
  } else if (key == ' ') {
    play = true;
  }
}
void drawBackground() {
  //image (bg, 0, 0);
  fill (#7E7779);
  rect (0, 500, width, 700);
  fill(#7E7779);
  rect(0, 300, width, 700);
}

void startScreen() {
  background(#5C5D5D);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Witch", width/2, 300);
  text("by Miley", width/2, 340);
  text("Press the 'Space Bar' to start", width/2, 380);
}

void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Gamer Over", width/2, 300);
  text("Score: " + score, width/2, 340);
  noLoop();
}

void infoPanel() {
  fill(128, 128);
  rect(0, 0, width, 50);
  fill(255);
  textSize(20);
  text("Score: " + score, 60, 43);
  text("Lives left: " + lives, 55, 20);
}
