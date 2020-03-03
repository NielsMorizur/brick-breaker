void intro() {
   background(#000000);
   image(title, 100,50, 620,175);
     
      
    //start button
     fill(#EA1515);
     if (mouseX >= 246 && mouseX <= 554 && mouseY >= 296 && mouseY <= 404) {
       stroke(255);
     }else {
       stroke(0);
     }  
     strokeWeight(4);
   ellipse(width/2, 350, 300,100);
     textSize(50);
     if (mouseX >= 246 && mouseX <= 554 && mouseY >= 296 && mouseY <= 404) {
      fill(255); 
     }else {
      fill(0);
     }
     noStroke();
   text("PLAY", 340,368);
   
   //options button
   optPull();    
}

void optPull() {
  rectMode(CORNER);
  if (dist(mouseX,mouseY, circleX,circleY) <= 65) {
     stroke(255);
    }else {
     noStroke(); 
    }
     fill(teal);
   ellipse(circleX, circleY, 130,120);
     stroke(60);
   line(circleX-15,circleY-50, circleX+15,circleY-50);
     textSize(23);
     fill(0);
   text("OPTIONS", circleX-50,circleY-15);
     fill(teal);
     noStroke();
   rect(-5,optRectY, 810,610);
  if (mousePressed && dist(mouseX,mouseY, circleX,circleY) <= 65) {
   optRectY = mouseY;
   circleY = mouseY;
   if (circleY >= height) circleY = height;
   if (optRectY <= -5) {
   optRectY = -5;
   mode = OPTIONS;
   menuY = 0;
   menuPullY = -610;
   }
  }
}

void introClicks() {
  if (mouseX >= 246 && mouseX <= 554 && mouseY >= 296 && mouseY <= 404) mode = GAME;
  
}
