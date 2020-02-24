ArrayList<Brick> myBricks;
  
  //modeframework variables
final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

//colors
color red = #FF1A05;

//ball variables
float bx,by, bvx,bvy;

//paddle variables
float px,py;

//boolean variables
boolean leftKey, rightKey;

//brick placement variables
float gridx, gridy;

void setup() {
  size(800, 600);
  mode = INTRO;
  
  myBricks = new ArrayList<Brick>();
  
  gridx = 100;
  gridy = 100;
  int i = 0;
  while (i < 60) {
    myBricks.add( new Brick() );
    gridx = gridx + 60;
     if (gridx == 400) gridx = 460;
    if (gridx >= 760) {
     gridx = 100;
     gridy = gridy + 60;
    }
    i = i + 1;
  }
  
    //ball
  bx = width/2;
  by = height - 50;
  bvx = 0;
  bvy = 3;
    //paddle
  px = width/2;
  py = height+10;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
