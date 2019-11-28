void game() {
 background(230); 

  fill(0);
text(score, 300,150);

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
    y1 = y1 + vy1;
  if (y1 >= 850) {
    y1 = random(-30,-150);
    x1 = random(50,325);
  }
  ellipse(x2,y2, 50,50);
    y2 = y2 + vy2;
  if (y2 >= 850) {
    y2 = random(-30,-150);
    x2 = random(325,550);
  }
  
  //horizontal
  ellipse(x3,y3, 50,50);
    x3 = x3 + vx3;
  if (x3 >= 650) {
    x3 = random(-30,-150);
    y3 = random(400,750);
  }
  ellipse(x4,y4, 50,50);
    x4 = x4 + vx4;
  if (x4 >= 650) {
    x4 = random(-30,-150);
    y4 = random(50,400); 
  }
  
   score = frameCount/60;
   
   if (frameCount/60 == 10) {
     vy1 = 4.3;
     vy2 = 4.3;
     vx3 = 4.3;
     vx4 = 4.3;
   }
   if (frameCount/60 == 20) {
     vy1 = 4.6;
     vy2 = 4.6;
     vx3 = 4.6;
     vx4 = 4.6;
   }
   if (frameCount/60 == 30) {
     vy1 = 4.9;
     vy2 = 4.9;
     vx3 = 4.9;
     vx4 = 4.9;
   }
   if (frameCount/60 == 40) {
     vy1 = 5.2;
     vy2 = 5.2;
     vx3 = 5.2;
     vx4 = 5.2;
   }
   if (frameCount/60 == 50) {
     vy1 = 5.5;
     vy2 = 5.5;
     vx3 = 5.5;
     vx4 = 5.5;
   }
   if (frameCount/60 == 60) {
     vy1 = 5.8;
     vy2 = 5.8;
     vx3 = 5.8;
     vx4 = 5.8;
   }
   if (frameCount/60 == 70) {
     vy1 = 6.1;
     vy2 = 6.1;
     vx3 = 6.1;
     vx4 = 6.1;
   }
   if (frameCount/60 == 80) {
     vy1 = 6.4;
     vy2 = 6.4;
     vx3 = 6.4;
     vx4 = 6.4;
   }
   if (frameCount/60 == 90) {
     vy1 = 6.7;
     vy2 = 6.7;
     vx3 = 6.7;
     vx4 = 6.7;
   }
   if (frameCount/60 == 100) {
     vy1 = 7;
     vy2 = 7;
     vx3 = 7;
     vx4 = 7;
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

//----------------------------------------------------
void gameClicks() {
  
}


//----------------------------------------------------
void arrow() {
  if (lives == 3) {
   fill(0);
  } else if (lives == 2) {
   fill(70); 
  } else if (lives == 1) {
   fill(140); 
  } else if (lives == 0) {
   fill(210); 
  }
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
