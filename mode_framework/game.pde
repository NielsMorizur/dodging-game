void game() {
 background(230); 

  stroke(0);
  strokeWeight(6);
line(25,-5, 25,805);
line(575,-5, 575,805);

  pushMatrix();
   translate(arrowX,arrowY);
   arrow();
  popMatrix();
  
  //enemies
    //vertical
    fill(enemyred);
    stroke(enemyorange);
    strokeWeight(5);
  ellipse(x1,y1, 50,50);
    y1 = y1 + 4;
  if (y1 >= 850) {
    y1 = random(-30,-150);
    x1 = random(50,325);
  }
  ellipse(x2,y2, 50,50);
    y2 = y2 + 4;
  if (y2 >= 850) {
    y2 = random(-30,-150);
    x2 = random(325,550);
  }
  
  //horizontal
  ellipse(x3,y3, 50,50);
    x3 = x3 + 4;
  if (x3 >= 650) {
    x3 = random(-30,-150);
    y3 = random(400,750);
  }
  ellipse(x4,y4, 50,50);
    x4 = x4 + 4;
  if (x4 >= 650) {
    x4 = random(-30,-150);
    y4 = random(50,400); 
  }
  
}

//----------------------------------------------------
void keyPressed() {
  if (key==CODED) {
   if (keyCode == LEFT) {
    arrowX = arrowX - 8; 
   }else if (keyCode == RIGHT) {
    arrowX = arrowX + 8; 
   }
   
   if (keyCode == UP) {
    arrowY = arrowY - 8;
   }else if (keyCode == DOWN) {
    arrowY = arrowY + 8; 
   }
   if (arrowX <= -230) {
    arrowX = -230;
   }
   if (arrowX >= 230) {
    arrowX = 230; 
   }
   if (arrowY <= 2) {
    arrowY = 2;
   }
   if (arrowY >= 698) {
    arrowY = 698; 
   }
}
  
}

void gameClicks() {
  
}


//----------------------------------------------------
void arrow() {
   fill(0);
  noStroke();
triangle(300,0, 260,100, 300,70);
triangle(300,0, 340,100, 300,70);
  
  stroke(230,0,0);
  strokeWeight(3);
 //left side
line(300,0, 260,100);
line(260,100, 300,70);
 //right side
line(300,70, 340,100);
line(340,100, 300,0);
}
