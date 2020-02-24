class Brick {

  float x, y;
  int hp;
  color c; 


  Brick() {
    x = gridx;
    y = gridy;
    c = #FF1A05;
    hp = 1;
  }

  void act() {
    if (hp > 0 && dist(x, y, bx, by) < 35) {
      hp = hp - 1;
      bvx = (bx - x)/5;
      bvy = (by - y)/5;
    }
  }

  void show() {
    if (hp > 0) {
      fill(c);
      ellipse(x, y, 50, 50);
    }
  }
}
