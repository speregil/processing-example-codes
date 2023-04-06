/*
* Creates a bouncing ball controlled by gravity and friction
* Click the ball to add acceleration in X and Y
*/

// Convinience colour definitions
final color ORANGE = color(255, 165, 0);
final color WHITE = color(255);

// Properties of the ball
float x, y;                      // position of the ball
float r;                         // radius of the ball
float dx, dy;                    // horizontal and vertical velocity of the ball
float kickForce;                 // Amount of acceletarion added to the ball when clicked

// Physical properties
float gravity;                   // gravity constant
float elasticity;                // elasticity of the ball
float dxTreshold, dyTreshold;    // treshold in which the ball stops completly
float friction;                  // friction of the floor that desacelerates the ball


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
  dy = 0;
  kickForce = 20;
  
  // initilise physics
  gravity = 0.2;
  elasticity = 0.75;
  dyTreshold = 1;
  dxTreshold = 0.5;
  friction = 0.1;
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
     if(dy >= -dyTreshold && dy <= dyTreshold){ // If bouncing too little, just stop
       dy = 0;
     }
     
     // Touching the floor, so applies friction to horizontal movement
     dx += dx > 0? -friction : friction;  
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
 
 // Stops horizontal movemen if advancing too little
 if(dx >= -dxTreshold && dx <= dxTreshold){ 
   dx = 0;
 }
 
 // clear the screen
 background(WHITE);
 fill(ORANGE);
 ellipse(x, y, r*2, r*2);
}

void mousePressed(){
  if(pointInCircle(mouseX, mouseY, r, x, y)){
    dy -= kickForce;
    dx += kickForce;
  }
}

/**, , 
 Checks if a point is within a circle
*
* @param pointX X coordinate of the point
* @param pointY Y coordinate of the point
* @param radius Radius of the circle
* @param centerX X coordinate of the center of the circle
* @param centerY Y coordinate of the center of the circle
*
* @return <code>true</code> if the point is inside of the circle,
* <code>false</code> if the point is outside of the circle.
*/
public boolean pointInCircle(float pointX, float pointY, float radius, float centerX, float centerY){
  boolean isInside = false;
  
  // Checks if the (pointX, pointY) coordinate is inside the boundaries of the circle 
  if(pointX >= centerX - radius && pointX <= centerX + radius){
    if(pointY >= centerY- radius && pointY <= centerY + radius)
      isInside = true;
  }
  
  return isInside;
}
