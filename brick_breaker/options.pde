void options() {
  background(teal);
  
  ballSlider();
  paddleSlider();

  //ball size
    fill(255);
    noStroke();
  ellipse(250,200, bSize,bSize);
  
  //paddle size
    fill(255);
    noStroke();
  ellipse(520,200, pSize,pSize);
    fill(teal);
  rect(420,190, 190,200);
  
  
    textSize(40);
    fill(255);
  text("Ball Size", 180,400);
  text("Paddle Size",570,400);
  
  //reset button
     rectMode(CENTER);
     if (mouseX >= 290 && mouseX <= 500 && mouseY >= 475 && mouseY <= 545) {
      fill(40); 
     } else {
      fill(0);
     }
    stroke(255);
    strokeWeight(4);
  rect(395,510, 200,70);
    rectMode(CORNER);
    textSize(40);
    fill(255);
  text("RESET", 395,525);
    
  menuPull();
 
}

void menuPull() {
  //menu button
  rectMode(CENTER);
  if (mouseX >= 326 && mouseX <= 474 && mouseY >= menuY-55 && mouseY <= menuY+55) {
    fill(30); 
  } else {
    fill(0);
  }
    stroke(255,0,0);
    strokeWeight(4);
  rect(width/2,menuY, 140,100);
    textAlign(CENTER);
    textSize(30);
    fill(255);
  text("MENU",403,menuY + 35);
    fill(0);
    noStroke();
    rectMode(CORNER);
  rect(-5,menuPullY, 810,610);
  if (mousePressed && mouseX >= 326 && mouseX <= 474 && mouseY >= menuY-55 && mouseY <= menuY+55) {
   menuPullY = mouseY-600;
   menuY = mouseY;
   if (menuY <= 0) menuY = 0;
   if (menuPullY >= -5) {
   menuPullY = -5;
   mode = INTRO;
   circleY = height;
   optRectY = 601;
   textAlign(LEFT);
   }
  }
}

void ballSlider() {
   //ball slider
    stroke(0);
    strokeWeight(5);
  line(75,70, 75,300);
   if (dist(mouseX,mouseY, 75,bSlideY) <= 35){
    fill(200);
   } else {
    fill(255);
   }
    strokeWeight(4);
  ellipse(75,bSlideY, 50,50);
  if (mousePressed && dist(mouseX,mouseY, 75,bSlideY) <= 35){
   bSlideY = mouseY;
   brickBounce = map(bSlideY, 70,300, 5,9);
   bounceSpeed = map(bSlideY, 70,300, 9,13);
   if (bSlideY <= 70) bSlideY = 70;
   if (bSlideY >= 300) bSlideY = 300;
  }
    bSize = map(bSlideY, 70,300, 20,50);
} 

void paddleSlider() {
    //ball slider
    stroke(0);
    strokeWeight(5);
  line(725,70, 725,300);
   if (dist(mouseX,mouseY, 725,pSlideY) <= 35){
    fill(200);
   } else {
    fill(255);
   }
    strokeWeight(4);
  ellipse(725,pSlideY, 50,50);
  if (mousePressed && dist(mouseX,mouseY, 725,pSlideY) <= 35){
   pSlideY = mouseY;
   if (pSlideY <= 70) pSlideY = 70;
   if (pSlideY >= 300) pSlideY = 300;
  }
  pSize = map(pSlideY, 70,300, 70,130);
}

void optionsClicks() {
  if (mouseX >= 290 && mouseX <= 500 && mouseY >= 475 && mouseY <= 545) {
    bSlideY = 70;
    pSlideY = 185;
  }
}
