class Brick {

  float x, y;
  int hp;
  color c; 

  Brick() {
    x = gridx;
    y = gridy;
    hp = int(random(1,4));
    if (hp == 3) {
      c = threeHP;
    }else if (hp == 2) {
      c = twoHP;
    }else if (hp == 1) {
      c = oneHP;
    }
    
  }

  void act() {
    if (hp > 0 && dist(x, y, bx, by) < bSize/2 + 25) {
      hp = hp - 1;
      if (hp == 0) score++;
      
      bvx = (bx - x)/brickBounce;
      bvy = (by - y)/brickBounce;
      
      if (hp == 3) {
      c = threeHP;
      }else if (hp == 2) {
      c = twoHP;
      }else if (hp == 1) {
      c = oneHP;
      } 
    }
  }

  void show() {
    if (hp > 0) {
      fill(c);
      ellipse(x, y, 50, 50);
      //fill(0);
      //textSize(20);
      //text(hp, x,y);
    }
  }
}
