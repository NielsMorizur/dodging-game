int mode;
final int INTRO = 0;
final int GAME = 1;

  //colors
color enemyred=#D30202;
color enemyorange=#F7741B;

  //arrow
float arrowX;
float arrowY;

  //obstacles
 //vertical
float x1, y1;
float x2, y2;
 //horizontal
float x3,y3;
float x4,y4;

//--------------------------------------------------------
void setup() {            //https://stackoverflow.com/questions/36334442/collision-detection-on-processing
   size(600,800);
arrowX = 0;  
arrowY = 670;
  //vertical
x1 = random(50,325);
y1 = random(-30,-150);
x2 = random(325,550);
y2 = random(-30,-150);
  //horizontal
x3 = random(-30,-150);
y3 = random(400,750);
x4 = random(-30,-150);
y4 = random(50,400);

mode = INTRO;

textAlign(CENTER,CENTER);
}

void draw(){
  if (mode == INTRO) {
    intro();
  }else if (mode == GAME) {
    game();
  }else {
    println("Error: Mode = " + mode);
  } 
}
