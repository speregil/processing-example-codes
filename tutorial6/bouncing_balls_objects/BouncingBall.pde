/**
* Representes a bouncing ball in the screen
*/
class BouncingBall
{
  //-------------------------------
  // Atributes
  //-------------------------------
  
  float x, y;        // X and Y position
  float dx, dy;      // X and Y speed
  float r;           // Radius 
  color ballColour;  // Colour
  
  //-------------------------------
  // Constructor
  //-------------------------------
  
  BouncingBall(float x, float y, float r, color colour, float dx, float dy) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.ballColour = colour;
    this.dx = dx;
    this.dy = dy;
  }
  
  //-------------------------------
  // Methods
  //-------------------------------
  
  /**
  * Draws the ball
  */
  void render() {
    noStroke();
    fill(ballColour);
    ellipse(x,y,r*2,r*2);
  }
  
  /**
  * Animates and bounces the ball
  */
  void update(){
    
    // Move the ball
    x += dx;
    y += dy;
    
    // Checks if rigth or left edge was hit and changes direction
    if(((x - r <= 0) && (dx < 0)) || ((x + r >= width - 1) && (dx > 0))) {
      dx = -dx;  
    }
    
    // Checks if top or bottom edge was hit and changes direction
    if(((y - r <+ 0) && (dy < 0)) || ((y + r >= height - 1) && (dy > 0))) {
       dy = -dy; 
    }
  }
}
