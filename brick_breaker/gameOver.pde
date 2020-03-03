void gameover() {
  background(200,0,0);
  rectMode(CENTER);
  
    strokeWeight(5);
    stroke(255);
    if (mouseX >= 245 && mouseX <= 555 && mouseY >= 295 && mouseY <= 405){
     fill(20); 
    }else {
    fill(0);
    }
  rect(width/2,350, 300,100);
    fill(255);
    textSize(55);
  text("MENU", 325,370);
  
    fill(0);
    textSize(65);
  text("GAMEOVER", 220,170);
  
  if (score > highscore) {
   highscore = score; 
  }
  
    textSize(35);
  text("Highscore:"+ highscore, 295,240);
}



void gameOverClicks() {
  if (mouseX >= 245 && mouseX <= 555 && mouseY >= 295 && mouseY <= 405) {
   setup();
  }
}
