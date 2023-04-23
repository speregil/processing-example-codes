/**
* Draws a bouncing ball using object oriented programming
*/

//-------------------------------
// Constants
//-------------------------------

// Convinient colour definitions
final color ORANGE = color(255, 165, 0);
final color WHITE = color(255);

//-------------------------------
// Fields
//-------------------------------

BouncingBall b;    //Bouncing ball

//-------------------------------
// Functions
//-------------------------------

/**
* Initialises the canvas and the ball instance
*/
void setup() {
  size(500, 500, P2D);
  smooth();
  b = new BouncingBall(250, 250, 50, ORANGE, -1.25, 1);
}

/**
* Animates the ball and renders it
*/
void draw() {
  b.update();
  background(WHITE);
  b.render();
}
