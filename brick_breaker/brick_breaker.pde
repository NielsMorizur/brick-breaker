ArrayList<Brick> myBricks;
  
  //modeframework variables
final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int OPTIONS = 5;
final int WIN = 6;
int mode;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause

//lives
int lives;

//score
int score;
int highscore;

//colors
color oneHP = #F9FA05;
color twoHP = #FA8C05;
color threeHP = #FA0505;

color teal = #02D8B3;

//ball variables
float bx,by, bvx,bvy;

//paddle variables
float px,py;

//boolean variables
boolean leftKey, rightKey;

//brick placement variables
float gridx, gridy;

//title 
PImage title;

//options button
float circleX, circleY;
float optRectY;

//menu button
float menuY;
float menuPullY;

//ball slider
float bSlideY;
float bSize;

//paddle slider
float pSlideY;
float pSize;

//bounce speed
float bounceSpeed;
float brickBounce;

void setup() {
  size(800, 600);
  mode = INTRO;
  lives = 3;
  title = loadImage("title.png");
  circleX = width/2;
  circleY = height;
  optRectY = 601;
  menuY = 0;
  menuPullY = -610;
  bSlideY = 70;
  pSlideY = 185;
  bSize = 20;
  pSize = 100;
  bounceSpeed = 9;
  brickBounce = 5;
  score = 0;
  
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
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == WIN) {
    win(); 
  } else {
    println("?");
  }
  //println(mouseX,mouseY);
}
