void game() {
  background(#000000);
  
   int i = 0;
  while (i < 60) {
    Brick b = myBricks.get(i); 
      b.show();
      b.act();
    i = i + 1;
    //if ( ) {
    // mode = WIN; 
    //}
  }
    
    noStroke();
    fill(255);
  
  paddle();
  
  ball();
 
 //lives indicator
    noStroke();
   if (lives == 3) {
    fill(255);
  ellipse(20,20, 20,20);
  ellipse(50,20, 20,20);
  ellipse(80,20, 20,20);
   } else if (lives == 2) {
     fill(255);
  ellipse(20,20, 20,20);
  ellipse(50,20, 20,20);
   } else if (lives == 1) {
     fill(255);
  ellipse(20,20, 20,20);
   }
   
   //pause button
   if (mouseX >= 728 && mouseX <= 782 && mouseY >= 3 && mouseY <= 62) {
     fill(60); 
   } else {
     fill(40);
   }
     stroke(255);
     strokeWeight(2);
  rect(730,5, 20,55);
  rect(760,5, 20,55);
    noStroke();
    
    //score indicator
    
    textSize(40);
    fill(110);
  text(score, 385,35);
  
  //win
  if (score == 60) {
   mode = WIN; 
  }
}

void gameClicks() {
  if (mouseX >= 728 && mouseX <= 782 && mouseY >= 3 && mouseY <= 62) {
   mode = PAUSE; 
  }
}


void ball() {
  ellipse(bx,by, bSize,bSize);
  
  //move the ball
  bx = bx + bvx;
  by = by + bvy;
  if (bx < 0 + bSize/2 || bx > width - bSize/2) {
   //bounce off the left and right walls 
    bvx = -bvx;    
  }
  if(by < 0 + bSize/2) {
   //bounce off the top and bottom walls 
    bvy = -bvy;
  }
  if (by > height) {
   lives--;
   bx = width/2;
   by = height/2;
   bvx = 0;
   bvy = -5;
   //println(lives);
   if (lives == 0) {
     mode = GAMEOVER;
   }
  }
  if (dist(bx,by, px,py) < bSize/2 + pSize/2) {
   bvx = (bx - px)/bounceSpeed;
   bvy = (by - py)/bounceSpeed;
  }
}

void paddle() {
  ellipse(px,py, pSize,pSize);
  if (px <= - 10) px = -10;
  if (px >= width + 10) px = width + 10;
  
  if (rightKey) px = px + 6;
  if (leftKey) px = px - 6;
}
