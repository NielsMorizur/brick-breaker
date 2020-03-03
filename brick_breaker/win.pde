void win() {
 background(0,215,0);
 
 //play again button
   rectMode(CENTER);
   if (mouseX >= 246 && mouseX <= 554 && mouseY >= 351 && mouseY <= 449) {
    fill(50); 
   } else {
    fill(0);
   }
   stroke(210,0,0);
   strokeWeight(4);
 rect(400,400, 300,90);
   fill(255);
   textSize(40);
 text("PLAY AGAIN", 285,415); 
   rectMode(CORNER);
   
   //win text
   fill(0);
   textSize(60);
 text("YOU WIN!", 265,200);
   stroke(0);
   strokeWeight(6);
 line(255,210, 550,210);
 
 
}

void winClicks() {
  if (mouseX >= 246 && mouseX <= 554 && mouseY >= 351 && mouseY <= 449) {
   setup(); 
  }
}
