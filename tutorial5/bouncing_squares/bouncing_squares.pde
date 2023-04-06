/**
* This program draws a bouncing pair of squares that change color when the mouse is inside either of them
*/

// Color definitions
final color ORANGE = color(255, 165, 0);
final color RED = color(255, 0, 0);
final color WHITE = color(255);

//Properties of the squares
float x1, x2;          // X position of the squares
float y1, y2;          // Y position of the squares
float s;               // Size of the squares
float dx;              // Horizontal velocity of the squares
float dy;              // Vertical velocity of the squares
color squaresColour;   // Colour of the squares

/**
* Initialises the canvas and the squares variables
*/
void setup() {
 size(500, 500, P2D);
 smooth();
 
 // common properties
 s = 75;
 dx = 1;
 dy = 2;
 squaresColour = ORANGE;
 
 // ininitialise the first square
 x1 = 250;
 y1 = 250;
 
 // initialises the second square
 x2 = x1 + s;
 y2 = y1 - s;
}

/**
* Animates the squares and renders them
*/
void draw(){
  // move the squares squares
  x1 += dx;
  y1 += dy;
  x2 += dx;
  y2 += dy;
  
  // hit the left edge?
  if((x1 <= 0) && (dx < 0)){
    dx = -dx;
  }
  
  // hit the right edge?
  if((x2 + s >= width) && (dx > 0)){
    dx = -dx;
  }
  
  // hit the top edge?
  if((y2 <= 0) && (dy < 0)){
    dy = -dy;
  }
  
  // hit the bottom edge?
  if((y1 + s >= height) && (dy > 0)){
    dy = -dy;
  }
  
  // change the squares' colour when the mouse pointer is over either of the squares
  if(pointInSquare((float)mouseX, (float)mouseY, x1, y1, s) || pointInSquare((float)mouseX, (float)mouseY, x2, y2, s)) {
    squaresColour = RED;
  }
  else {
   squaresColour = ORANGE; 
  }
  
  background(WHITE);
  noStroke();
  fill(squaresColour);
  rect(x1, y1, s, s);
  rect(x2, y2, s, s);
}

/**, , 
 Checks if a point is within a square.
*
* @param pointX X coordinate of the point
* @param pointY Y coordinate of the point
* @param squareLeft X coordinate of the left side of the square
* @param squareTop Y coordinate of the top side of the square
* @param squareSize size of the square
*
* @return <code>true</code> if the point is inside of the square,
* <code>false</code> if the point is outside of the square.
*/
public boolean pointInSquare(float pointX, float pointY, float squareLeft, float squareTop, float squareSize){
  boolean isInside = false;
  
  // Checks if the (pointX, pointY) coordinate is inside the boundaries of the square 
  if(pointX >= squareLeft && pointX <= squareLeft + squareSize){
    if(pointY >= squareTop && pointY <= squareTop + squareSize)
      isInside = true;
  }
  
  return isInside;
}
