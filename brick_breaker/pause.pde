void pause() {
   background(0);
   
   //play button
   if (dist(mouseX,mouseY, 400,300) <= 105) {
     fill(250,0,0); 
   } else {
     fill(200,0,0);
   }
     stroke(255);
     strokeWeight(5);
   ellipse(400,300, 200,200);
     fill(255);
     noStroke();
   triangle(350,250, 350,350, 470,300);
   
   //menu button 
   if (mouseX >= 245 && mouseX <= 555 && mouseY >= 465 && mouseY <= 565) {
     fill(0,180,0);
   } else {
     fill(0,150,0);
   }
     stroke(255);
   rect(250,470, 300,90);
     fill(0);
     textSize(55);
   text("MENU", 323,535);
}

void pauseClicks() {
  if (dist(mouseX,mouseY, 400,300) <= 105) {
   mode = GAME; 
  }
  
  if (mouseX >= 245 && mouseX <= 555 && mouseY >= 465 && mouseY <= 565) {
   setup(); 
  }
}
