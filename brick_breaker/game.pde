void game() {
  background(0,0,235);
  
   int i = 0;
  while (i < 60) {
    Brick b = myBricks.get(i);
    b.show();
    b.act();
    i = i + 1;
  }
  
  ball();
  paddle();
  
}

void gameClicks() {
  
}


void ball() {
  ellipse(bx,by, 20,20);
  
  //move the ball
  bx = bx + bvx;
  by = by + bvy;
  if (bx < 0 + 10 || bx > width - 10) {
   //bounce off the left and right walls 
    bvx = -bvx;    
  }
  if(by < 0 + 10 || by > height - 10) {
   //bounce off the top and bottom walls 
    bvy = -bvy;
  }
  if (dist(bx,by, px,py) < 60) {
   bvx = bx/9 - px/9;
   bvy = by/9 - py/9;
  }
}

void paddle() {
  ellipse(px,py, 100,100);
  if (px <= - 10) px = -10;
  if (px >= width + 10) px = width + 10;
  
  if (rightKey) px = px + 5;
  if (leftKey) px = px - 5;
}
