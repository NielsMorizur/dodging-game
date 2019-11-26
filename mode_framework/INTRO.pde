void intro() {
  background(0);
  
  if (mouseX>150 && mouseX<450 && mouseY>400 && mouseY<500) {
    fill(200); 
  }else {
    fill(255);
  }
    stroke(0,0,255);
    strokeWeight(3);
  rect(150,400, 300,100);
 
    fill(230,0,0);
    textSize(70);
  text("START", 300,440);
}

void introClicks() {
  if (mouseX>150 && mouseX<450 && mouseY>400 && mouseY<500) {
    mode = GAME;  
  }
  
}
