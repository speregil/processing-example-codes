/**
* Draws a bouncing ball using object oriented programming
*/

//-------------------------------
// Constants
//-------------------------------

final color WHITE = color(255);      // Convinient colour definition

//-------------------------------
// Fields
//-------------------------------

ArrayList<BouncingBall> ballList;    //List off all balls in screen, initially empty

//-------------------------------
// Functions
//-------------------------------

/**
* Initialises the canvas and the ball instance
*/
void setup() {
  size(500, 500, P2D);
  smooth();
  ballList = new ArrayList<BouncingBall>();
  ballList.add(createRandomBouncingBall());    // Script starts with one ball
}

/**
* Animates the ball and renders it
*/
void draw() {
  // Move all the balls
  for(int i = 0; i < ballList.size(); i++){
    BouncingBall ball = ballList.get(i);
    ball.update();
  }
  
  // Clear the screen
  background(WHITE);
  
  // Draws all the balls
  for(BouncingBall ball : ballList) {
     ball.render(); 
  }
}

/**
* Adds or remove balls when the mouse is clicked
* LEFT Adds a ball
* RIGHT Removes the first ball in the array
*/
void mousePressed(){
  if(mouseButton == LEFT){
    ballList.add(createRandomBouncingBall());  
  }
  else if((mouseButton == RIGHT) && !ballList.isEmpty()){
    ballList.remove(0); 
  }
}

/**
* Creates a completely randomized ball
*/
BouncingBall createRandomBouncingBall() {
  BouncingBall b = new BouncingBall(random(100, 151), random(100, 151),
                                    random(-2.0, 2.0), random(-2.0, 2.0),
                                    random(15, 36),
                                    color(random(256), random(256), random(256)));
  return b;
}
