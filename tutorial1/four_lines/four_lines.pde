/*
* Draws four lines with one end in the corners of the screen and the other follows
* the mouse
*/

void setup(){
 size(500,500,P2D);
}

void draw(){
  background(255);
  line(0,0,mouseX,mouseY);      // Top-left
  line(500,0,mouseX,mouseY);    // Top-right
  line(0,500,mouseX,mouseY);    // Bottom-left
  line(500,500,mouseX,mouseY);  // Bottom-right 
}
