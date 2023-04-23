/**
* Defines a stick man with head, body, arms, legs and feet
*/
class StickMan
{
  //-------------------------------
  // Atributes
  //-------------------------------
  
  float x, y;        // Position of the head
  float headSize;    // Diameter of the head
  float manHeight;   // How tall the stick man is
  float feetSize;    // How big are his feet
  
  //-------------------------------
  // Constructor
  //-------------------------------
  
  StickMan(float x, float y, float headSize, float manHeight) {
    this.x = x;
    this.y = y;
    this.headSize = headSize;
    this.manHeight = manHeight;
    this.feetSize = headSize/2;  // Feet are always half the size of the head
  }
  
  //-------------------------------
  // Methods
  //-------------------------------
  
  /**
  * Draws the stick man in the canvas
  */
  void render() {
    // Calculates neck and butt positions for easy coding
    float neck = y + headSize/2;
    float butt = neck + manHeight;
    
    // Draws the head in the x,y position
    ellipse(x, y, headSize, headSize);
    
    // Draws the body
    line(x, neck, x, butt);
    
    // Draws the arms
    line(x, neck + manHeight/2, x - headSize*2, neck); // Left arm
    line(x, neck + manHeight/2, x + headSize*2, neck); // Right arm
    
    // Draws the legs
    line(x, butt, x - headSize*2, butt + manHeight); // Left leg
    line(x, butt, x + headSize*2, butt + manHeight); // Right leg
    
    // Draws the feet 
    line(x - headSize*2, butt + manHeight, x - headSize*2 - feetSize, butt + manHeight); // Left feet
    line(x + headSize*2, butt + manHeight, x + headSize*2 + feetSize, butt + manHeight); // Left feet
  }
}
