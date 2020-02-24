void intro() {
   background(#000000);
    rectMode(CENTER);
    //start button
     fill(red);
     stroke(255);
     strokeWeight(4);
   rect(width/2, 400, 200,100);
}

void introClicks() {
  if (mouseX >= 296 && mouseX <= 504 && mouseY >= 346 && mouseY <= 454) mode = GAME;
}
