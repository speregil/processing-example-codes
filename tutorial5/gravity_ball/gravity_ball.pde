/*
* Creates a bouncing ball controlled by gravity
*/

// Convinience colour definitions
final color ORANGE = color(255, 165, 0);
final color WHITE = color(255);

// Properties of the ball
float x, y;                      // position of the ball
float r;                         // radius of the ball
float dx, dy;                    // horizontal and vertical velocity of the ball

// Physical properties
float gravity;                   // gravity constant
float elasticity;                // elasticity of the ball
float dxTreshold, dyTreshold;    // treshold in which the ball stops completly


/*
* Initilises the canvas and the ball variables
*/
void setup() {
  size(500, 500, P2D);
  smooth();
  noStroke();
  
  // initilise the ball
  r = 25;
  x = r + 10;   // start at top left
  y = r + 10;
  dx = 3; // bounce to the right
  dy = 0.0f;
  
  // initilise physics
  gravity = 0.1;
  elasticity = 0.75;
  dyTreshold = 0.1;
  dxTreshold = 0.5;
}

/**
* animates the ball
*/
void draw(){
 // move the ball
 x += dx;
 y += dy;
 
 // apply gravity
 dy += gravity;
 
 // hit the bottom edge?
 if((y+r >= height - 1) && (dy > 0)){
   dy = -dy;           //bounce...
   dy *= elasticity;   //... but lose speed due to elasticity
   if(dy > -dyTreshold && dy < dyTreshold)
     dy = 0.0f;
 }
 
 // hit the right edge?
 if((x+r >= width - 1) && (dx > 0)){
   dx = -dx;           //bounce...
   dx *= elasticity;   //... but lose speed due to elasticity
 }
 
 // hit the left edge?
 if((x-r <= 0) && (dx < 0)){
   dx = -dx;           //bounce...
   dx *= elasticity;   //... but lose speed due to elasticity
 }
 
 print(dy);
 
 // clear the screen
 background(WHITE);
 fill(ORANGE);
 ellipse(x, y, r*2, r*2);
}
