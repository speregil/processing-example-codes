/**
* Draws a Stick Man that follows the mouse
*/

//-------------------------------
// Constants
//-------------------------------

// Convinient colour definitions
final color WHITE = color(255);

//-------------------------------
// Fields
//-------------------------------

StickMan guy;

//-------------------------------
// Functions
//-------------------------------

/**
* Initialises the canvas and the stick man instance
*/
void setup() {
  size(500, 500, P2D);
  smooth();
  guy = new StickMan(200, 100, 20, 50);
}

/**
* Renders and move the stick man
*/
void draw() {
  guy.x = mouseX;
  guy.y = mouseY;
  background(WHITE);
  guy.render();
}
